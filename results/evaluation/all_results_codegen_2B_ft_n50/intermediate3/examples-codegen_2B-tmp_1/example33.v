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
always_ff @ ( posedge clk or negedge reset )
begin
if(reset == 1'b0)
r_reg <= 5'b00000;
else if(idthis)
r_reg <= r_next; 
end
// 1: above lift shifter, 2: below, 3: rotate
assign r_next = ({{5{r_reg[2]}}}),
({{1{r_reg[4]}}}),
({{3{r_reg[4]}}},
r_reg[4],
r_reg[3:0],
r_reg[4]);
assign feedback_value = r_reg[2] ^ r_reg[3];
and #(5'b11111)
assign r_reg_1 = {1'b0,r_reg[4]};
xor #(5'bendmodule
