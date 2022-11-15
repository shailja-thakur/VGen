// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input [7:0] a, b;
output [7:0] cout;
output [7:0] sum;

assign cout = sum;

always @(posedge clk) begin
if(rst)
cout <= 0;
else if (a[2])
sum <= a + b + 1;
else
sum <= a + b;
end
end
endmodule
