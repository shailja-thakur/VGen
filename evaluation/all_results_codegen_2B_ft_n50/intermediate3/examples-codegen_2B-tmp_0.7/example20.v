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
always @(posedge clk or posedge reset) begin
// if reset is high then set r_reg to 0
if (reset == 1)
r_reg <= 0;
// if reset is low then assign r_reg to the output q
else
q <= r_reg;
end
// next state
// combinational assignment
always @(*) begin
// next value for the register
r_next = r_reg;
// feedback to next state
feedback_value = r_reg[0]^r_reg[2]^r_reg[4]^r_reg[6]^r_reg[8]^r_reg[10]^r_reg[12]^r_reg[14]^r_reg[16]^r_reg[18]^r_reg[20]^r_reg[22]^r_reg[24]^end
endmodule
