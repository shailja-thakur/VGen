// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire[3:0] g, p;

assign {cout,sum} = ({a, b}&{4'b0000});

endmodule
