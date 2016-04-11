NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   008C   0102 =    258. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0046  __text_start
       0046  __start
       0066  _exit
       0067  _port_init
       007C  _uart1_init
       008D  _init_devices
       009F  _putchar
       00A0  _getchar
       00A7  _main
       00C7  __text_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0004 =      4. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\icc\lib\crtatmega.o	[ crtatmega.s ]
UART1_RxPoollingMode.o	[ UART1_RxPoollingMode.c ]
<library>	

User Global Definitions

ram_end = 0x10ff
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x8c
data = 0x100
eeprom:1.4096

