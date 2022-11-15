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
  r_reg = 1;
end


// ----------------- Generated LFSR Logic Functions -----------------
initializer
lfsr (
    r_next,
    reset,
    4,
    5,
    clk, 
    q
)
{
    rx<32>(r_reg);
    r_reg = r_reg + 1;
    if (r_reg >= 256)
      r_reg = r_reg - 256;
    rx<8>(r_next);
    q = r_reg;
    rx<5>(feedback_value) = r_next & 0x1f;
    r_next = r_next + 0x10;
    if (r_next >= 256)
      r_next = r_next - 256;
    rx<5>(r_reg) = r_next;

    endmodule
