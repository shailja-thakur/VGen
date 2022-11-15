// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

localparam int w = 1;
localparam int h = 1;
localparam int wp = w-1;
localparam int hp = h-1;

active clk;

// The full adder will add two 16-bit words and produce a sum and carry-out.
localparam int w = 16;
localparam int h = 16;
localparam int wp = w-1;
localparam int hp = h-1;

wire [w] a[wp];
wire [w] b[wp];
wire [h] sum;
wire [h] carry;

// The full adder will add two 16-bit words and produce a sum and carry-out.
initial begin
sum = 0;
carry = 0;
end

// The half adder adds two bits and produces a sum and carry-out.
initial begin
coutend
endmodule
