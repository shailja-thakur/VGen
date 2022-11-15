// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
    
// Half adder output
assign cout = sum + ( ( (a && b) || ( !a && !b )) ? 1 : 0 );

// Half adder sum
assign sum = (a || b) && !(a && b);

endmodule
