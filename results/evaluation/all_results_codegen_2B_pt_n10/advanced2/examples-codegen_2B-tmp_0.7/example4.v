// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
wire input [6:0];

initial begin
    q = 0;
    slowena <= 1;
    clk <= 1;
end

always @(posedge clk)
    if (slowena && (((input[5] ^ input[4]) ^ input[3]) ^ input[2] ^ input[1] ^ input[0] ^ input[7] ^ input[6] ^ input[5]))
        q <= q + 1;

end

endmodule
