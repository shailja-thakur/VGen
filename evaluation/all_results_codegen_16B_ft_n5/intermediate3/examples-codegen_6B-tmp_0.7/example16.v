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
always @(posedge clk or negedge reset) begin
    if (reset) begin
        r_reg <= 1;
        r_next <= r_reg ^ feedback_value;
        q <= r_next;
    end else begin
        feedback_value <= r_reg[4:0] ^ r_reg[3:0];
        r_next <= r_reg;
        q <= r_next;
    end
end

#define MAX_BITS 5
#define M 5

// LFSR Magic Factor: 0x4d0f
#define GF_M 0x4d0f
#define GF_S 8

// generate a random string
const int magic_seed = 0x4d0f;
const int magic_seed_len = 32;
int magic_seed_string[32];
int i;
for (endmodule
