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
always // always
  begin
  r_register		//  memdata

	if ( (reset == 1) && (r_reg != 0x0) ) begin // reset unset
		r_reg		= 1;
		r_next		= r_reg;
		feedback_value	= 1;
		q 			= 0;
	end
	else if ( (clk == 1) && (r_reg == 1) ) begin // clk set
		feedback_value = (r_next ^ feedback_value);
		
		q 			= (feedback_value ^ (r_next & r_next << 1 & r_next << 2 & r_next << 3 & r_next << 4));
	end
	else if ( (clk == 1) && (r_reg == 0) ) begin // clk set
		q 			endmodule
