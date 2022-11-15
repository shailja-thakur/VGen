// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// create a wire to connect each half adder to the next
wire a0, b0, c0;
wire a1, b1, c1;

// instantiate each half adder
half_adder half_adder_0( .a(a), .b(b), .cout(a0), .sum(sum) );
half_adder half_adder_1( .a(a0), .b(b), .cout(b0), .sum(sum) );
half_adder half_adder_2( .a(a0), .b(b0), .cout(cout), .sum(sum) );

endmodule
