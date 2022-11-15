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
reg [4:0] state_machine;
always @(posedge clk or posedge reset) begin
    if( reset ) begin
        r_reg <= 1;
    end else begin
        state_machine <= (r_reg[1] ^ r_reg[2] ^ r_reg[2]);
        r_next <= r_reg ^ (state_machine << 2);
        feedback_value <= ~(r_reg >> 2) ^ (r_reg >> 4);
        q <= state_machine + (feedback_value << 2);
        r_reg <= state_machine;
    end
end

// (a-1)*(a^c)^p
// where a is the number of taps; c is the coefficient; p is the irreducible polynomial
// sorry if my code is a bit buggy
int polynomial_multipendmodule
