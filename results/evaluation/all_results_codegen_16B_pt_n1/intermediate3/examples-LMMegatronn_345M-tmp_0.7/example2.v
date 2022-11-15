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
assign r_next = {
  r_reg[0],
  r_reg[1],
  r_reg[2],
  r_reg[3],
  r_reg[4],
  r_reg[5],
  r_reg[6]
};
// only update the r_reg_1
always@(posedge clk, posedge reset)
begin
 if (reset == 1'b1)
  begin
  r_reg <= 5'b00000;
  r_next <= 5'b00000;
  end
  else
  begin
  r_reg <= r_next;
  r_next <= r_next;
  end
end
assign r_next = r_reg;
//assign q = r_reg;

assign q = (r_reg == 5'b00000) ? r_regendmodule
