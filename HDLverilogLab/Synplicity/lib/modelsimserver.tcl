# Set up the server side of the socket
if (![info exists Server_Array]) {
    global Server_Array
}
if (![info exists Server_Started]) {
    global Server_Started
    set Server_Started "Started"
}

proc cmas {args} {

    if {[llength $args] < 1} {
        set port [pid]
    } else {
        set port $args
    }
    Connect_Server $port
}

proc Connect_Server {port} {

    Setup_Server $port
    #tkwait has it's own event wait loop! - let's check it out ...
}

proc Setup_Server {port} {
    global Server_Array

    if [string match [array names Server_Array main] "main"] {
        puts -nonewline "\tOpen socket exists: "
        puts $port
        return
    }
    set Server_Array(main) [socket -server Accept_Input $port]
    puts -nonewline "\tOpening IPC socket: "
    puts $port
}

# Proc called on input
proc Accept_Input {sock addr port} {
    global Server_Array

    puts "Accept $sock from $addr port $port"
    set Server_Array(addr,$sock) [list $addr $port]
    fconfigure $sock -buffering line
    fileevent $sock readable [list Process_Input $sock]
}

# Proc called to process input from client
proc Process_Input {sock} {
    global Server_Array

    if {[eof $sock] || [catch {gets $sock line}]} {
        close $sock
        set Server_Started ""
        puts "Close $Server_Array(addr,$sock)"
        unset Server_Array(addr,$sock)
    } else {
        set type [lindex $line 0]
        if {[string compare [lindex $line 1] "quit"] == 0} {
            close $sock
            set Server_Started ""
            unset Server_Array(addr,$sock)
            return
        }
        if {[string compare [lindex $line 1] "exit"] == 0} {
            close $sock
            set Server_Started ""
            unset Server_Array(addr,$sock)
            exit
        }
        switch $type {
            CMD {
                if { [catch {set ret [eval [lindex $line 1] \
                    [lrange $line 2 end]]} rc] } {
                    puts "Function evaluation from client failed"
                    puts $sock [list SERVER_FAILURE $rc]
                } else {
                    set ret [ split $ret \n ]
                    puts $sock [list SERVER_SUCCESS $ret]
                }
            }
            SYS {
                if { [catch {set ret [exec [lindex $line 1] \
                    [lrange $line 2 end]]} rc] } {
                    puts "Function evaluation from client failed"
                    puts $sock [list SERVER_FAILURE $rc]
                } else {
                    puts $sock [list SERVER_SUCCESS $ret]
                }
            }
            default {
                set errmsg "Unknown message type from client to server : '$type'"
                puts $sock [list SERVER_FAILURE $errmsg]
            }
        }
    }
}

if ([string match [array names env MTIPORT] "MTIPORT"]) {
    cmas $env(MTIPORT)
} else {
    cmas 1025
}
