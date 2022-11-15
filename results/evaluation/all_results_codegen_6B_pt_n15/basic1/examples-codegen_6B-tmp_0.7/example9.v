// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
out.a = in.a;
// assign in to out
out.b = in.b;

module wire_assign_id( input in, output out, input id );
// assign out to in
out.a = in.a;
// assign in to out
out.b = in.b;
endmodule
