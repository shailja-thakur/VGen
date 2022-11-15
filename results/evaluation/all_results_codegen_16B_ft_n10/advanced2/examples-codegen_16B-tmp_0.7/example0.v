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
 if (reset) begin
 q <= 4'b0;
 end
 else begin
 if (slowena) begin
 case (q)
 4'b0: q <= 4'b1;
 4'b1: q <= 4'b2;
 4'b2: q <= 4'b3;
 4'b3: q <= 4'b4;
 4'b4: q <= 4'b5;
 4'b5: q <= 4'b6;
 4'b6: q <= 4'b7;
 4'b7: q <= 4'b8;
 4'b8: q <= 4'b9;
 default: q <= 4'b0;
 endcase
 end
 end
endmodule
