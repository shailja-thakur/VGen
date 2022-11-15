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
assign q = r_reg;
always @(posedge clk or posedge reset)
begin
if(reset)
r_reg = 5'b00000;
// exclusively highlighting the position 2 of the register to inject
// feedback
//r_reg[2] = 1'b1;
// in the example below r_reg[2:0] are "replaced" here and not "read"
r_reg[2:0] = {4{1'b1}};
end
// LINKED A at the position 3 of lfsr
// r_reg = {1,1,1,1,1,1,1};
// ASSIGNING THE VALUE OF R_NEXT AT THE POSITION OF REGISTER 2 FROM THE r_Reg
// R_next[2] = r_reg[2_cuts]] where 0 < (2_cuts) < 4endmodule
