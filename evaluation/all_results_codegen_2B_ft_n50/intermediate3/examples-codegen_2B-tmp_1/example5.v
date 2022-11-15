// Design a 5-bit maximal-length Galois LFSR with taps at bit positions 5 and 3
module lfsr( 
    input clk,
    input reset,
    output [4:0] q
); 
reg [4:0] r_reg;
wire [4:0] r_next;
wire feedback_value;
// on reset set the value of r_reg to 1
// otherwise assign r_next to r_reg
// assign the xor of bit positions 2 and 4 of r_reg to feedback_value
// assign feedback concatenated with 4 most significant bits of r_reg to r_next
// assign r_reg to the output q
always@(posedge clk, negedge reset) 
	begin
	// reset
	if(reset == 1'b0) 
	r_reg <= 5'b10001;
	if(reset == 1'b1) 
	r_reg <= 5'b0;
	end
assign r_next = r_reg ^ ({5{check_input}});
assign feedback_value = r_next[1] ^ r_next[3]; //check r[0] is a majority or minority
endmodule
