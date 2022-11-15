// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire_assign <input,output> in_out( in, out );
// Assign output to in
wire_assign <output,input> out_in( out, in );
// Display results
wire_assign <input,input> in_in( in, in );
wire_assign <input,input> in_in( in, in );

// Output results to the screen
initial begin
   in_out.gen();
   out_in.gen();
   in_in.gen();
end
endmodule
