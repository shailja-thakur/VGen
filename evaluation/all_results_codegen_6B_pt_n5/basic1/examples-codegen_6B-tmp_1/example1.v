// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
module inline_assign( output out ) {
    wire_assign(
        1, out
    );
}
// assign out2 to in2
stat assign2_to_1_through_out_to_in2 = assign(
    1,
    out2_select( out_all, out ),
    out2_select( in_all, in )
);
// assign out1 to in1
stat assign1_to_2_through_out_to_in1 = assign(
    2,
    out1_select( out_all, out ),
    out1_select( in_all, in )
);
// assign out3 to in3
stat assign3_to_4_through_out_to_in3 = assign(
    4,
    out3_select( out_all, out ),
    out3_select( inendmodule
