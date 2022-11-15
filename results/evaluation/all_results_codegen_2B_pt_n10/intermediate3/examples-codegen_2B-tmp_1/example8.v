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
    r_reg <- r_reg << 1;
    r_next(w_1) = r_reg(w_2);
end
end
// if clk is still low
// turn lfsr to the last value of 'r_reg'
wire [4:0] r_old_reg;
wire [4:0] k_reg;
wire [4:0] r_old_b_reg;
wire tmp;
wire mux_in_bit[4:0];
wire k_rem [3:0];
wire r_bit[5:0];
wire is_on;
// for designqualitytesting purposes
initial begin
    r_old_b_reg > 0;
    {r_old_reg}(l_out) <= r_old_b_reg;
    
    k_bit <= 4;
    endmodule
