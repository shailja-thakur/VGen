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
always @(posedge clk)
begin
    if (reset)
    begin
        r_reg <= 1;
    end
    else
    begin
        r_next <= r_reg << 4 | r_reg[5] ^ (r_reg[4] ^ feedback_value);
    end
end

// Provide a test bench
#define T_MAX 0.0
#define T_MIN -1.0
#define T_TOL 5e-2

FULL_SIGNED_FLOAT_TYPE T = T_MIN;
double T_last = T_MIN;

always @(posedge clk)
begin
    if (r_next[0] != r_reg[0])
    begin
        T = T_MAX;
    end
    else
    begin
        if (T_last != T)
        beginend
end
end
endmodule
