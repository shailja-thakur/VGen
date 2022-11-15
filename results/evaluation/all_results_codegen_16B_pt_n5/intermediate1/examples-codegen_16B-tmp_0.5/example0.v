// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

always @(posedge clk) begin
    sum <= a + b;
    cout <= sum[7:0] + carry;
    carry <= sum[15:8];
end

// This is a full adder. A full adder adds one bit and produces a sum and carry-out.
module full_adder( 
input a, b,
output cout, sum );

always @(posedge clk) begin
    sum <= a + b;
    cout <= sum[7:0] + carry;
    carry <= sum[15:8];
end

// This is a full adder. A full adder adds one bit and produces a sum and carry-out.
module full_adder( 
input a, b,
output cout, sum );

always @(posedge clk) begin
    sum <= a + b;
end
endmodule
