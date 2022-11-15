// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @(clk,reset,q,slowena) begin
case ({reset,slowena,q})

4'b0101: q <= q + 1'b1;
4'b0111: q <= {q[2:0],1'b0};
default: q <= 4'bxxxx;

endcase
end

endmodule
