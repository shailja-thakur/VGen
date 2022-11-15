// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

reg [2:0] sum;
reg [1:0] carry;
reg [1:0] a_bit;
reg [1:0] b_bit;
reg [1:0] sum_bit;
reg [1:0] carry_out;

always @(posedge clk) begin
    if (a_bit == 0) begin
        a_bit <= 1;
        sum <= sum + carry;
        carry <= carry + b_bit;
    end else begin
        a_bit <= 0;
        sum_bit <= sum + carry;
        carry_out <= carry + b_bit;
    end
end

always @(posedge clk) begin
    if (b_bit == 0) begin
        b_bit <= 1;
        sum <= sum_bit;
        carry_out <= carry_out + aend
end
endmodule
