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
initial begin
    r_reg = 0x01;
    r_next = 1;
    feedback_value = (reset == 1) ? 1 : 0;
    q = r_reg;
end
// on clock clk set r_reg to the next value of r_reg
// if r_next is 1 then set r_next to the next value of r_reg
// if r_next is 0 then increment r_reg
// assign the xor of bit positions 2 and 4 of r_reg with feedback_value to r_next
// assign r_reg to the next value of r_reg
// assign r_next to the output q
initial begin
    r_reg = r_next;
    r_next = (r_next == 1) ? r_reg : r_reg + 1;
    feedback_value = (clk == 1) ? 1 :end
endmodule
