// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in

var in, out;

// create the module and wire it up
var module = new wire_assign( in, out );

// call the module in a loop
module.run();

// the output should be equal to the input
//console.log( out );
//console.log( in );
endmodule
