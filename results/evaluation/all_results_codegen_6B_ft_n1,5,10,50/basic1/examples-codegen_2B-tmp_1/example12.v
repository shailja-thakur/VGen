// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire wire1, wire2, wire3;
assign out_1 = in1, out_2 = in2;
assign out_3 = in3;
wire foobar1, foobar2, foobar3;
in wire1( clock_1, foo1 );
in wire2( clock_2, foo2 );
in wire3( clock_3, foo3 );
foo wire1( bar_1 ); // this is foo1
in wire1{ out1, out2, outcompare }; // wire1 represents the three inputs
foo wire1a:{ out1 }; var wire1b:{ out1b, outcompare2 }; // empty block for variable initialization
foo wire2{ out1, out1b, outcompare2 }; // wire2 is affected only by ordinal2
foo wire3{ out1b, outb, outcompare }; // and the pierceendmodule
