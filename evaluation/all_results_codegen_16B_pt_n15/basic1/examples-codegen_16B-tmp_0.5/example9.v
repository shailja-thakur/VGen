// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire_assign.assign = function( in, out ) {
    out.value = in.value;
};
// Design a module that has one input and one output
module wire_1_1( input in, output out );
// assign out to in
wire_1_1.assign = function( in, out ) {
    out.value = in.value;
};
// Design a module that has one input and two outputs
module wire_1_2( input in, output out1, output out2 );
// assign out1 to in
wire_1_2.assign = function( in, out1, out2 ) {
    out1.value = in.value;
    out2.value = in.value;
};
// Design a module that has two inputs and one output
module wire_2_1( input in1, input in2, outputendmodule
