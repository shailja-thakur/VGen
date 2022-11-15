// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
task assign( in );

module wire_implicit_initial( input in, output out );
task connect( input in_addr, output out_addr, input in_data, output out_data );
// instantiate in with a state
$($foreach(in, block) instantiate)( ${foreach(out, block) namespace(="", "*") namespace("out_addr", out_addr) namespace("in_addr", in_addr) call(connect,in_data,out_data)} );
task assign2( input in1, input in2, output out );
// instantiate in1 with class template by a parameter. The
// input parameter is 'declared_use'
$(chain($foreach(range(2,64), procedure('','implicit_constructor'))))($foreach(range(4,8), procedure('','implicit_initialization'))))endmodule
