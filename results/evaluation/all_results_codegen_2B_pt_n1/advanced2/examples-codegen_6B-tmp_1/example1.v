// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// The most significant bit of the output q gets the sign of the input slowena. 
procedure counter_fast(
    input slowena,
    output reg [3:0] q);

// On the positive edge of the clock:
// If slowena is high, the counter goes forwards.
// If slowena is low, the counter goes backwards.
// The most significant two bits of the counter (half value) are shifted not just the whole count but two bits further.
// The sign of the half value determines whether the output is negative or positive.
procedure count_fast(
    input intena,
    output reg [3:0] q);

always @(posedge clk)
begin
    if (reset == 1) begin
        q <= 0;
    end
    else if (intena == 1) begin
        count_fast(slowena, qend
end
endmodule
