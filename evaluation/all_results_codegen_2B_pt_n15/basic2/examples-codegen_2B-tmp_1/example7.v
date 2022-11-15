// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
// initialization:
// input a, b, and out - ports of the circuitry that will be hooked up to gpios
// task setup:
// a and b set variables with the input pins pulled high. the logic switches the
// state of the output output to false when both t or the inputs equal 0.
// task loop:
// The logic switch switches the state of output to true whenever either of the input pins are
// high.
// outputs are maximal order outputs.


//out is an output pin. 
//if 1 = inputs true 
//if 0 = inputs false 
//task function ( tasks ) is the JeffersonKIT task that sits in the compiler

//function ( tasks ){
//	out := false;
//	a := true;
//	b := true;
//	repeat
//			a := check_if_a()
//			b := check_if_endmodule
