// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
assign out = in;
// undefined nets throw an error
// error : vpz/testudi/design/networkinst.v:54: undef_wire_error
// error : vpz/testudi/design/main/net/main/main.v:84: undef_wire_error
endmodule
