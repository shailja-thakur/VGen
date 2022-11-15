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
always @(posedge clk)
begin
case (q)
4'b0000:
	// on reset
	q <= 4'b0001;
4'b0001:
	// q == 12
	q <= 4'b0010;
4'b0010:
	// q == 12
	q <= 4'b0011;
4'b0011:
	// q == 12
	q <= 4'b0100;
4'b0100:
	// q == 12
	q <= 4'b0101;
4'b0101:
	// q == 12
	q <= 4'b0110;
4'b0110:
	// q == 12
	q <= 4'b0111;
4'b0111:
	// q == 12
	q <= 4'b1000;
4'b1000:
	// qend
endmodule
