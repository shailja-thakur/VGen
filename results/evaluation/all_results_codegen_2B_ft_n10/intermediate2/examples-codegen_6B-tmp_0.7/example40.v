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
always @(posedge clk or posedge reset) begin
	 //code for increment 
	 if (reset) 
	 q <= 4'b0001; 
	 else if (q == 4'b1111) 
	 q <= 4'b0001; 
	 else 
	 q <= q + 4'b0001;
	 //code for display multiple digits (do not initialize anode array)
	 
	 case (q) 
	 4'b0000: a[3:0] = 4'hF; 
	 4'b0001: a[3:0] = 4'h4; 
	 4'b0010: a[3:0] = 4'h3; 
	 4'b0011: a[3:0] = 4'h2; 
	 4'b0100: a[3:0] = 4'h1end
endmodule
