// This is a counter that counts from 1 to 12
module counter( 
    input clk,
    input reset,
    output reg [3:0] q
); 
// update q on the positive edge of the clock according to the following cases:
// on reset, assign q to 1
// else if q is 12, assign q to 1
// else, increment q by 1 

architecture frv is of interface sidecar_boards : {

    interface system_tick
    {
        integer array [0:7] tens;
        integer array [0:7] micros;
        integer array [35:35] wraps;
        integer array [31:31] overflows;
        integer array [30:30] downtests;
        integer array [29:29] overflow_statuses;
        integer array [28:28] reset_statuses;
    };

    uuid idle[] = x00.idle[io_width]			// (Write-only)
                    orig 					// (Read-only)
                    input 					// (Read/Write)
                    clock; 				// (Write-only)
    octets i2c_in0[] = thread    			// soc, i2c
                    input 					// (Readendmodule
