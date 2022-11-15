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
initial begin
    clkport = CLK;
    rspi.ce1=0;
    clkin = clk;

    // reset value is 1, so we take the image of the reset and swap it for zero
    rspi.ce0=1 - (reset ^ 1);

    // counter assigned to bit 0
    q = (rspi.col ^ 0) & 3;
    // transitions are continously firing
    if (fcount == 0) {               
	q = (q + 1) & 3;
	fcount = 0xFF;                   // each rising edge fires 0xFF times
    } else {                        // count back down
	if (fcount-- == 0)             // reached 0
	    q = (q + 1) & 3;
    }
end;


endmodule
