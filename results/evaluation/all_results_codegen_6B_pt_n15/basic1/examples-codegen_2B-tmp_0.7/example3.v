// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
assign out = in;
// endmodule

module wire_or( input in1, in2, output out );
// OR gate
assign out = in1 | in2;
// endmodule

module wire_not( input in, output out );
// NOT gate
assign out = !in;
// endmodule

module wire_xor( input in1, in2, output out );
// XOR gate
assign out = in1 ^ in2;
// endmodule

module wire_nand_and_or( input in1, in2, in3, output out );
// NAND, AND, OR gate
assign out = !( in1 & in2 | in3 );
// endmodule

module wire_nand_nand_or( input in1, in2, in3, output out );
// NAND, NANDendmodule
