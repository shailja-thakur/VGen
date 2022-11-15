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
always @ (posedge clk, posedge reset)
begin
if(reset) 
	q <= 4'h1;
else
case(q)
4'h0: q <= 4'h1;
4'h1: q <= 4'h2;
4'h2: q <= 4'h3;
4'h3: q <= 4'h4;
4'h4: q <= 4'h5;
4'h5: q <= 4'h6; 
4'h6: q <= 4'h7;
4'h7: q <= 4'h8;
4'h8: q <= 4'h9;
4'h9: q <= 4'ha;
4'ha: q <= 4'hb; 
4'hb: q <= 4'hc;
4'hc: q <=end
endmodule
