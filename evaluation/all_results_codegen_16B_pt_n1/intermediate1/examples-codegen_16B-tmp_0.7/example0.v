// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input a, b;
output cout;
output sum;

reg [1:0] sum;

always @(posedge a or posedge b) begin
    if (a and b) begin
        sum <= 1;
    end else if (a) begin
        sum <= 0;
    end else if (b) begin
        sum <= 1;
    end
end

assign cout = sum;
assign sum = sum + a + b;

endmodule
