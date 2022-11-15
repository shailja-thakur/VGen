// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
module out_to_in( input out );

// Multiplying outputs
main -> .input_i( inputin );
inputin -> .forward( mult1, tmp_out );

module my_multiplyB( input_i in1, input_i in2, output out1, output out2){
    tmp_out <= in1 & in2;
    out1 <= tmp_out.sp;
};

module my_multiply(
    input_i in1, input_i in2,
    output out1, output out2
) {

    // some input, bring our input loc and allocate
    // out locs for outputs in.
    tmp_out <= in1 & in2;

    tmp_out.sp <= out1 & out2;
}

`

func TestAutomaticGeneration(t *testing.T)endmodule
