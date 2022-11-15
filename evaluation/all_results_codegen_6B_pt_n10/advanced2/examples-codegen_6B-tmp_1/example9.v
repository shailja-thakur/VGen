// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
//
always @(posedge clk_fast)
count_slow <=
    (reg == 0) ? 0 :
    (!reset || (slowena && q == 9)) ? q + 1 :
    q;

// Misc support code
module c19();

always @(posedge clk_fast) begin
    // Outputs to be signed 32-bits. Signed multiplied by signed 32-bit constant.
    reg <= 32 - phas_fast(slowena) * q - 1;
end

endmodule
