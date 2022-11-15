// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire [2:0] tmp;
assign tmp[0] = in;
assign out = tmp[1];
endmodule
