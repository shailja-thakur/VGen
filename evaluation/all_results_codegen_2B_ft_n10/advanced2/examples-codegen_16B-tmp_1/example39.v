// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @(posedge clk) begin
casez ({clk, reset, slowena})
8'b1xxx01xx: q <= q; // Since the output range is 0 to 9, no need to OR the three bits
8'b1xxx10xx: if(q != 9)
q <= q + 1; // since the output range is 0 to 9, no need to OR the three bits
default: q <= 4'b0000;
endcase
end
endmodule
