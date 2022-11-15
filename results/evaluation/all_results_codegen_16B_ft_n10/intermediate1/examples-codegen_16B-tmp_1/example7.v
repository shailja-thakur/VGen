// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// 
// Design implementation of a 
// half adder following behavioural modelling;
//

//assign sum = a ^ b; // XOR gate
//assign cout = a & b; // AND gate

assign sum = a | b; // OR gate
assign cout = a & b; // Middle result

endmodule
