// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
wire o1, o2, o3; // Used as inout port wires
assign o1 = a ^ b; // Bitwise xor
assign sum = o1 ^ b; // Bitwise xor with NOT OF b
assign o2 = o1 & b; // Bitwise and
assign o3 = a & o2; // Bitwise and
assign cout = o3; // Carry out is same as the input b
endmodule
