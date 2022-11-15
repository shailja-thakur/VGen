// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire_assign.assign( in, out );
// end module


// module that asserts the output when input is asserted
module wire_and( input in, output out );
wire_and.gate( in, out );
// end module

// module that does a 3-input NAND gate
module nand( input a, input b, input c, output out );
nand.gate( a, b, c, out );
// end module

// module that does a 4-input NAND gate
module and4( input a, input b, input c, input d, output out );
and4.gate( a, b, c, d, out );
// end module


// module that does a 5-input NAND gate
module and5( input a, input b, input c, input d, input e, output out );
and5.gate( a,endmodule
