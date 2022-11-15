// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

always @(posedge clk)
sum <= a + b + (cout & 0x8000);

always @(posedge clk)
cout <= (a & 0x8000) + (b & 0x8000) + (sum & 0x8000);
endmodule
