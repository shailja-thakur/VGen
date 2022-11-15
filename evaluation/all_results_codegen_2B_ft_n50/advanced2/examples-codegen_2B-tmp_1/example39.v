// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
 // If the enable is not high, value q is not changed, and next note played
// will be repeated.

always @(amyclk) begin
 casez(reset)
 1'b0: q <= 4'b0;
 1'b1: q <= 4'b0;
 default: q <= 4'b0;
 endcase
 end
 always@(*) begin
 if(slowena) begin
 casez(q) 
 4'b0000: q <= q + 1;
 4'b1000: q <= q - 1;
 default: q <= q;
 endcase
 end
 else 
 q <= q;
 end
endmodule
