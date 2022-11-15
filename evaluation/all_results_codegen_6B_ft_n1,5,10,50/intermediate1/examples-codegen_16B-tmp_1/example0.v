// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
wire x,y,b_not;
wire w;
supply1 vdd;
supply0 gnd;

//If an input is 0, reverse its complement to be 1. 
assign gnd = 1'b1;
assign vdd = 1'b0;

//Create a 1 bit variable
assign b_not = 1'b1;
assign x = (b_not & b);
assign w = (a & x);
assign y = (b & (~b_not));
assign sum = (a ^ x & y);
assign cout = (w | sum);
endmodule
