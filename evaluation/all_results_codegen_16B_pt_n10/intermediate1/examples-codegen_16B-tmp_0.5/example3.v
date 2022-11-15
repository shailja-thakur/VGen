// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

reg [1:0] sum;
reg [3:0] carry;

always @(posedge clk)
    if (a)
        sum = a + b;
    else
        sum = b;

assign cout = {sum, carry};

endmodule
