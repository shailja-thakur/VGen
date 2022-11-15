// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

always @(posedge clk) begin
    if (!rst)
        cout <= a;
    else 
        cout <= a + b;
end

reg [2:0] sum;
always @(posedge clk) begin
    sum <= a + b;
end

endmodule
