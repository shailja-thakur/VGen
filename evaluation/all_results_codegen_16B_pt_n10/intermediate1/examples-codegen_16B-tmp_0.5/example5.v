// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

reg [2:0] sum;
wire carry;
wire [1:0] a_bit, b_bit;

always @( posedge a or posedge b ) begin
    a_bit <= a;
    b_bit <= b;
    sum <= a_bit + b_bit + carry;
    carry <= ( a_bit + b_bit )[1];
end

endmodule
