// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum ); // 
// Create instances of modules for each input and output
// Make connections between modules 
fadder uut_half_1(.a(a), .b(b), .y(sum), .cout(cout));
endmodule
