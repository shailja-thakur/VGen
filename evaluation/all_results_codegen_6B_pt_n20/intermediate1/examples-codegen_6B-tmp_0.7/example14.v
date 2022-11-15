// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

parameter Cin_a = 0;
parameter Cin_b = 0;

wire sum;

always @(posedge clk)
begin
    sum <= a + b + Cin_a + Cin_b;
end
endmodule
