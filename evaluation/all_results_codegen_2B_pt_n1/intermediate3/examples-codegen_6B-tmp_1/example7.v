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
always @ (clk or d_clk) begin 
	if (reset) begin
	      r_next = 1;
	      r_reg = feed_init;
	      feedback_value = 0;
	      lsb = 0;
	  end else r_next = r_reg xor ( r_reg & r_reg bitand (0b01100000));
	write_output_reg( q_iter, 0x7F&r_next );
	feedback_value = feedback_value << 1;
	end
		
end

// gate3_counter is used when r_reg == 3
// it is a LFSR with taps at bit position 3 but this is ignored by other gates
// but it is to be saved in case r_reg == 3
couldisolate gate3_counter( 
    input clk,
    inputendmodule
