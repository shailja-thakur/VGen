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
instance
lfsr lfsr_PROGRAM 0
begin
    wire r_next;
    wire feedback_value;
    reg r_reg;
    r_reg <= 31'b111'b111'b111;  // reset register to start-state
    // Initialize to [0b001'1111'0b1] random number sequence
    // 4 sample points
    reg temp;         
    reg [4:0] temp_reg;
    reg [4:0] next_temp;
    reg [4:0] feedback_reg;
    p_clk <- clk;
iteration
    feedback_reg <= temp;
    r_reg <= r_reg zext[temp_reg];
next_temp:
    r_reg <= rotate[r_reg,1] & 3;
to_next
    feedback_value <= tempend
endmodule
