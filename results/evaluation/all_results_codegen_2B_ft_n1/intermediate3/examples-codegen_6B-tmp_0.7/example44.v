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
// initial r_reg = 5'b00000;
// initial q = 5'b00000;
always @( posedge clk or posedge reset )
	if( reset )
	begin
	 r_reg <= 5'b00000;
	end
	else
	begin
	 r_reg <= r_next;
	end
always @( r_reg or feedback_value )
begin
	if( feedback_value )
	begin
	 q[4:0] <= { q[3:0], r_reg[4:1] };
	end
	else
	begin
	 q[4:0] <= { r_reg[4:1], q[3:0] };
	end
end
endmodule
