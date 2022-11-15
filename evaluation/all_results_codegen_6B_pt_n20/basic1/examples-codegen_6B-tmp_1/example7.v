// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
module wire_assign( input in, output out )
{
  out = in;
  return out;
}
// Intended to be used like this: wire_process(input_wire, signal());
wire_assign( double signal() ) {
  return 0.0;
}

//------------
// Compiler- generated sync variables
#define clock_period _3-1 //Your clock_period should be 3-1 = 2
#define F(x) (x)

#define Await 3
#define Apply 3
#define Results 3
//------------

// Cluster-generated sync variables
#define compensate_delay _2-1 //This should add 2 clock periods (about the defined clock_period2) to the pipeline
#define ordered_causal_act_act_delay _3-1 // top pipeline
#define ordered_causal_act_act_endmodule
