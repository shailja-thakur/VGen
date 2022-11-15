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
always
    if ( reset == 1'b0 )
        q = 1;
    else if ( q == 12'b11 )
        q = 1;
    else
        q = q + 1;
// The counter only ever increments Object Sizes of 4 bytes, so q is
// multiplied by 256 before it is used to mask out input signals
reg
    [5:0]
    i;
// on rising edge of clock q is updatede increment q by 1
always
    if ( clk == 1'b1 ) begin
        q <= q + 1;
    end
endmodule
