#
# Select a prefered pad type for a Xilinx I/O
#
proc set_xilinx_padtype {args} {

     if [expr [llength $args] < 2] {
         error {xc_padtype usage: <port_object> <pad_type>}
     }
     set objname [lindex $args 0]
     set sw [lindex $args 1]
     switch -- $sw {
        IBUF {
                 define_attribute $objname xc_ioff 0
        }

        IBUF_U {
                 define_attribute $objname xc_ioff 0
        }

        IBUF_CMOS {
                 define_attribute $objname xc_ioff 0
                 define_attribute $objname xc_cmos 1
        }

        IBUF_TTL {
                 define_attribute $objname xc_ioff 0
                 define_attribute $objname xc_ttl 1
        }

        IFD {
                 define_attribute $objname xc_ioff 1
        }

        IFD_F {
                 define_attribute $objname xc_ioff 1
                 define_attribute $objname xc_fast 1
                 define_attribute $objname xc_nodelay 1
        }

        IFDX {
                 define_attribute $objname xc_ioff 1
        }

        IFDX_F {
                 define_attribute $objname xc_ioff 1
                 define_attribute $objname xc_fast 1
                 define_attribute $objname xc_nodelay 1
        }
        IFDXI {
                 define_attribute $objname xc_ioff 1
        }

        IFDXI_F {
                 define_attribute $objname xc_ioff 1
                 define_attribute $objname xc_fast 1
                 define_attribute $objname xc_nodelay 1
        }
        IFDI {
                 define_attribute $objname xc_ioff 1
        }

        IFDI_F {
                 define_attribute $objname xc_ioff 1
                 define_attribute $objname xc_fast 1
                 define_attribute $objname xc_nodelay 1
        }
   
        OBUF {
                 define_attribute $objname xc_ioff 0
             }

        OBUF_F {
                 define_attribute $objname xc_ioff 0
                 define_attribute $objname xc_fast 1
        }
        
        OBUF_S {
                define_attribute $objname xc_ioff 0
                define_attribute $objname xc_slow 1
        }
        
        OBUF_U {
                define_attribute $objname xc_ioff 0
        }
        
        OBUF_MF {
                 define_attribute $objname xc_ioff 0
                 define_attribute $objname xc_medfast 1
        }

        OBUF_MS {
                 define_attribute $objname xc_ioff 0
                 define_attribute $objname xc_medslow 1
        }
        
        OBUF_CMOSCAP {
                 define_attribute $objname xc_ioff 0
                 define_attribute $objname xc_cmos 1
                 define_attribute $objname xc_cap 1
        }

        OBUF_CMOSRES {
                 define_attribute $objname xc_ioff 0
                 define_attribute $objname xc_cmos 1
                 define_attribute $objname xc_res 1
        }

        OBUF_TTLCAP {
                 define_attribute $objname xc_ioff 0
                 define_attribute $objname xc_ttl 1
                 define_attribute $objname xc_cap 1
        }

        OBUF_TTLRES {
                 define_attribute $objname xc_ioff 0
                 define_attribute $objname xc_ttl 1
                 define_attribute $objname xc_res 1
        }

        OBUFT {
                 define_attribute $objname xc_ioff 0
        }

        OBUFT_F {
                 define_attribute $objname xc_ioff 0
                 define_attribute $objname xc_fast 1
        }

        OBUFT_S {
                 define_attribute $objname xc_ioff 0
                 define_attribute $objname xc_slow 1
        }

        OBUFT_MF {
                 define_attribute $objname xc_ioff 0
                 define_attribute $objname xc_medfast 1
        }

        OBUFT_MS {
                 define_attribute $objname xc_ioff 0
                 define_attribute $objname xc_medslow 1
        }

        OBUFT_CMOSCAP {
                 define_attribute $objname xc_ioff 0
                 define_attribute $objname xc_cmos 1
                 define_attribute $objname xc_cap 1
        }

        OBUFT_CMOSRES {
                 define_attribute $objname xc_ioff 0
                 define_attribute $objname xc_cmos 1
                 define_attribute $objname xc_res 1
        }

        OBUFT_TTLCAP {
                 define_attribute $objname xc_ioff 0
                 define_attribute $objname xc_ttl 1
                 define_attribute $objname xc_cap 1
        }

        OBUFT_TTLRES {
                 define_attribute $objname xc_ioff 0
                 define_attribute $objname xc_ttl 1
                 define_attribute $objname xc_res 1
        }

        OFD {
                 define_attribute $objname xc_ioff 1
        }

        OFD_F {
                 define_attribute $objname xc_ioff 1
                 define_attribute $objname xc_fast 1
        }

        OFD_S {
                 define_attribute $objname xc_ioff 1
                 define_attribute $objname xc_slow 1
        }

        OFD_MF {
                 define_attribute $objname xc_ioff 1
                 define_attribute $objname xc_medfast 1
        }

        OFD_MS {
                 define_attribute $objname xc_ioff 1
                 define_attribute $objname xc_medslow 1
        }

        OFDX {
                 define_attribute $objname xc_ioff 1
        }

        OFDX_F {
                 define_attribute $objname xc_ioff 1
                 define_attribute $objname xc_fast 1
        }

        OFDX_S {
                 define_attribute $objname xc_ioff 1
                 define_attribute $objname xc_slow 1
        }

        OFDX_MF {
                 define_attribute $objname xc_ioff 1
                 define_attribute $objname xc_medfast 1
        }

        OFDX_MS {
                 define_attribute $objname xc_ioff 1
                 define_attribute $objname xc_medslow 1
        }

        OFDI {
                 define_attribute $objname xc_ioff 1
        }

        OFDI_F {
                 define_attribute $objname xc_ioff 1
                 define_attribute $objname xc_fast 1
        }

        OFDI_S {
                 define_attribute $objname xc_ioff 1
                 define_attribute $objname xc_slow 1
        }

        OFDI_MF {
                 define_attribute $objname xc_ioff 1
                 define_attribute $objname xc_medfast 1
        }

        OFDI_MS {
                 define_attribute $objname xc_ioff 1
                 define_attribute $objname xc_medslow 1
        } 

        OFDXI {
                 define_attribute $objname xc_ioff 1
        }

        OFDXI_F {
                 define_attribute $objname xc_ioff 1
                 define_attribute $objname xc_fast 1
        }

        OFDXI_S {
                 define_attribute $objname xc_ioff 1
                 define_attribute $objname xc_slow 1
        }

        OFDXI_MF {
                 define_attribute $objname xc_ioff 1
                 define_attribute $objname xc_medfast 1
        }

        OFDXI_MS {
                 define_attribute $objname xc_ioff 1
                 define_attribute $objname xc_medslow 1
        } 

        OFDT {
                 define_attribute $objname xc_ioff 1
        }

        OFDT_F {
                 define_attribute $objname xc_ioff 1
                 define_attribute $objname xc_fast 1
        }

        OFDT_S {
                 define_attribute $objname xc_ioff 1
                 define_attribute $objname xc_slow 1
        }

        OFDT_MF {
                 define_attribute $objname xc_ioff 1
                 define_attribute $objname xc_medfast 1
        }

        OFDT_MS {
                 define_attribute $objname xc_ioff 1
                 define_attribute $objname xc_medslow 1
        }

        OFDTX {
                 define_attribute $objname xc_ioff 1
        }

        OFDTX_F {
                 define_attribute $objname xc_ioff 1
                 define_attribute $objname xc_fast 1
        }

        OFDTX_S {
                 define_attribute $objname xc_ioff 1
                 define_attribute $objname xc_slow 1
        }

        OFDTX_MF {
                 define_attribute $objname xc_ioff 1
                 define_attribute $objname xc_medfast 1
        }

        OFDTX_MS {
                 define_attribute $objname xc_ioff 1
                 define_attribute $objname xc_medslow 1
        }

        OFDTI {
                 define_attribute $objname xc_ioff 1
        }

        OFDTI_F {
                 define_attribute $objname xc_ioff 1
                 define_attribute $objname xc_fast 1
        }

        OFDTI_S {
                 define_attribute $objname xc_ioff 1
                 define_attribute $objname xc_slow 1
        }

        OFDTI_MF {
                 define_attribute $objname xc_ioff 1
                 define_attribute $objname xc_medfast 1
        }

        OFDTI_MS {
                 define_attribute $objname xc_ioff 1
                 define_attribute $objname xc_medslow 1
        }

        OFDTXI {
                 define_attribute $objname xc_ioff 1
        }

        OFDTXI_F {
                 define_attribute $objname xc_ioff 1
                 define_attribute $objname xc_fast 1
        }

        OFDTXI_S {
                 define_attribute $objname xc_ioff 1
                 define_attribute $objname xc_slow 1
        }

        OFDTXI_MF {
                 define_attribute $objname xc_ioff 1
                 define_attribute $objname xc_medfast 1
        }

        OFDTXI_MS {
                 define_attribute $objname xc_ioff 1
                 define_attribute $objname xc_medslow 1
        }

        BUFG {
                 define_attribute $objname xc_clockbuftype $sw
                 define_attribute $objname xc_ioff 0
        } 

        BUFG_F {
                 define_attribute $objname xc_clockbuftype $sw
                 define_attribute $objname xc_ioff 0
                 define_attribute $objname xc_fast 1
        }

        BUFGP {
                 define_attribute $objname xc_clockbuftype $sw
                 define_attribute $objname xc_ioff 0
        } 

        BUFGP_F {
                 define_attribute $objname xc_clockbuftype $sw
                 define_attribute $objname xc_ioff 0
                 define_attribute $objname xc_fast 1
        }

        BUFGS {
                 define_attribute $objname xc_clockbuftype $sw
                 define_attribute $objname xc_ioff 0
        }
 
        BUFGS_F {
                 define_attribute $objname xc_clockbuftype $sw
                 define_attribute $objname xc_ioff 0
                 define_attribute $objname xc_fast 1
        }

        BUFGE {
                 define_attribute $objname xc_clockbuftype $sw
                 define_attribute $objname xc_ioff 0
        }
         
        BUFGLS {
                 define_attribute $objname xc_clockbuftype $sw
                 define_attribute $objname xc_ioff 0
        }
     
        BUFFCLK {
                 define_attribute $objname xc_clockbuftype $sw
                 define_attribute $objname xc_ioff 0
        }

        default { error [format "xc_padtype: unknown padtype %s" $sw]}
     }
     
}

