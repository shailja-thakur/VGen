// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// If ena is low, q is left alone.
always @(posedge clk)
 begin
 if (reset)
 q <= 0;
 else if (slowena && q < 9)
 q <= q + 1;
 end
 endmodulemodule MUX2(
 input [1:0] select,
 input [3:0] A,
 input [3:0] B,
 output reg [3:0] out
 );
 always @(*)
 case(select)
 2'b00 : out = A;
 2'b01 : out = B;
 2'b10 : out = 4'b1111;
 2'b11 : out = 4'b0000;
 default : out = 4'b0000;
 endcase
 endmodulemodule MUX8(
 input [2:0] select,
 input [7:0] A,
 input [7:0endmodule
