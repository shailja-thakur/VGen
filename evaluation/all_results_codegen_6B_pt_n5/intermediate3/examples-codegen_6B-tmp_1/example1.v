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
// always set bit 5 of q to the summer of bitpositions 2 and 4 of r_reg
always @(posedge clk or negedge reset)
begin
	if (reset) 
	  	r_reg = 0b10101100000;
	else 
	  	if (r_reg[0] == 0x8)
			r_reg[0] ^= 0x8;     
		else
			if (r_reg[1] == 0x8)
				r_reg[1] ^= 0x8;
			else
				if (r_reg[1] == 0x1 && r_reg[3] == 0x0) // 0x1 in edge4
					r_reg[1] ^= 0x8;
				else
					r_reg[0] ^= 0x1;
				
		r_end
endmodule
