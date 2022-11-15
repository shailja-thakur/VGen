// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

reg [3:0] tmp;
wire [3:0] carry;
reg [3:0] sum;

begin
    sum = b[3:0] + a[3:0];
    carry = sum[3];
    sum[3] = 0;
    sum[2] = sum[2] + carry;
    carry = sum[2] + carry;
    sum[2] = 0;
    sum[1] = sum[1] + carry;
    carry = sum[1] + carry;
    sum[1] = 0;
    sum[0] = sum[0] + carry;

end

endmodule
