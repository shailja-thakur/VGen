// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in

module f7( input signal );    // signal has a label

// component with a selector
subcomponent CORA[] OF f7_0 {
in := f7<0X007>();
out := f7<64X127>();
out_to_in := {out, in};
};
</pre>

It can also be used, but is not mandatory: follow the warning and remove
{'<64X127>'} part from output of compound assign operator in 48 types as:

module f7( input signal );    // signal has a label

    scale_in : f7<>();
    scale_ofs_out : !f7<>();
    scale_out : f7<>();

  subcomponent CORA[] OF scale_in {
in := f7<700>();
out := f7<1024>();
out_to_endmodule
