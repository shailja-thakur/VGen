// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire [1:0] temp;
buf b1(temp[0],in);
buf b2(temp[1],temp[0]);
mux2 mux(out,temp[1],temp[0]);
endmodule
