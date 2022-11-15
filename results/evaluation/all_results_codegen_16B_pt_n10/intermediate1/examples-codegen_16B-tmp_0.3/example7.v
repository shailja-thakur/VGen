// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input a, b;
output cout, sum;

wire cin, sum_out;

always @(posedge clk)
begin
    sum_out <= sum;
    cout <= a + b;
    sum <= a + b;
end

endmodule
