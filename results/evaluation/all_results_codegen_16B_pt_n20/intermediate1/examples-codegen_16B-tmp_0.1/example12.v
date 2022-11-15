// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input a, b;
output cout, sum;

always @(posedge clk) begin
    if (rst) begin
        cout <= 0;
        sum <= 0;
    end else begin
        cout <= a + b;
        sum <= a + b + (cout & 0x1);
    end
end

endmodule
