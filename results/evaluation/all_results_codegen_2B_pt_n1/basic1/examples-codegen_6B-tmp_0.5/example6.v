// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
module wire_assign_out( input out, output in );
// assign in to out
module wire_assign_in( output out, input in );

// Design a module that takes in an input and outputs it to the input
module wire_passthru( input in, output out );
// passthru out to in
module wire_passthru_out( output out, input in );
// passthru in to out
module wire_passthru_in( input out, input in );

// Design a module that takes in an input and outputs it to the output
module wire_passthru_reverse( input in, output out );
// passthru out to in
module wire_passthru_reverse_out( output out, input in );
// passthru in to out
module wire_passthru_reverse_in( input out, input in );
endmodule
