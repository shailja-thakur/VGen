// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is the structural code for a half adder. 
// The function of a half adder is to add two numbers a and b, and produce the sum and carry-out.

// assign statements produce a combinational circuit, which is a dataflow model of a circuit. 
// The statements describe the conditions under which a signal is produced. 
// The following statements describe the conditions under which the signals sum and cout are produced. 
// The conditions are given in boolean algebra. 
// The conditions are given in terms of the operators && and ||. 
// The conditions are given in terms of signals, which are declared as wires. 

assign sum = a ^ b; // bitwise xor
assign cout = a & b; // bitwise and
endmodule
