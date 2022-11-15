// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

reg [2:0] sum;
wire carry_out;

always @(posedge clk) begin
    sum <= a + b;
    cout <= sum[1];
    carry_out <= sum[0];
end

endmodule
