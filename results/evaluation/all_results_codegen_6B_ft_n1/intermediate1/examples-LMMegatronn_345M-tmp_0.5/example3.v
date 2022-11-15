// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
wire [3:0] f;
wire [2:0] g;
wire [1:0] p;

assign {cout,sum} = a + b + cin;
assign cout = g[3] | (p[3] & b) | (p[3] & p[2] & p[1] & p[0]);
assign sum = p[3] & p[2] & p[1] & p[0];

endmodule
