// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire [1:0] cin[0:1];
wire [0:1] sum;

assign cout = cin[0] | cin[1];
assign sum = cin[0] + cin[1];

endmodule
