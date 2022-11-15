// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
for (i=0; i<=30; i++) {
    out = in;   
}
endmodule
