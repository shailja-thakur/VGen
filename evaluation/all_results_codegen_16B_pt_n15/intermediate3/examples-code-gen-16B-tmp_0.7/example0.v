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
// assign feedback value concatenated with 4 MSBs of r_reg to r_next
// assign r_reg to the output q
always @(posedge clk or posedge reset) //generate a combinational block that sets the r_reg register
begin
	// if the reset flag is high then set the r_reg value to 1
	if(reset == 1)
	begin
	r_reg <= 5'b1;
	//otherwise assign the next value to the current value
	end
	else
	begin
	r_reg <= r_next;
	end
end
assign r_next = {r_reg[4],r_reg[4] ^ r_reg[2]}; //assign the next value to the current value shifted to the left by 1 and XORed with the previous value at bit position 2
assign feedback_value = r_reg[4] & r_reg[3]; //assign the XOR of the bit positions 3 and 4 to the feedback value
assendmodule
