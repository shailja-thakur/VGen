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
// Note: The internal representation of the counter is q[3:0] so we are making a switch on the q[0]
always @(posedge clk or posedge reset) begin 
	if(reset)
	begin 
	q = 4'b0000;
	end 
	else if(q == 12'b11111110)
	begin
	q = 4'b0000;
	end 
	else 
	begin 
	q[0] = ~(q[0]);
	q[3:1] = q[3:1] + 1'b1;
	end 
end 
endmodule
