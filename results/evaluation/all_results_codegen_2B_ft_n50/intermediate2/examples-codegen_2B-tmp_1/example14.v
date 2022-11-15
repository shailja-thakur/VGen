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
	always @(posedge reset)
//	begin
//if (reset)
//	q <= 4'b1;
//else if(q == 4'b1111)
//	q <= 4'b1;
//else
//	q <= q + 1;
//	end
	always @(posedge clk)
	assign q = 
q = 1
always @( posedge clk ) // always around the posedge clk
//	if (reset)
//	begin
//	q <= 16'b1;	
 the loop over
 unused localparam
 // q[3:0] states occur at the rising and falling edges of the clock
 // the following is the state table of the counter
	always @( negedge q[3])
	if (q[3] == 1'b0endmodule
