// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out

 internally use a dff to flip the signal when necessary
 
 requires there AND gate requires a and b to be 0 or 1, signalling our circuit to output (1 or 0)
 
 assign out = din;
 
 
 clock generate the first D flipflop when we're outputting a 0 from the two input tests
 
 
 dff myDff( out , din , clk , ~reset, q ); // ONESHOT with reset


 
 // start it in a b state at the beginning so that it outputs 0
 
 initial begin
 
clk = 1'b0;
a = 1'b0;
b = 1'b0;
@(posedge clk); // enable the din


a = 1'b1;
@(posedge clk); // enable one CLK cycle and it changes to b

b= 1'b1end
endmodule
