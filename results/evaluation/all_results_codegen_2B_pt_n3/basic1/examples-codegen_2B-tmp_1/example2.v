// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
export { wire_assign as out_to_in1 } from './out_to_in1.js';
export { wire_assign as out_to_in2 } from './out_to_in2.js';
export { wire_assign as out_to_in3 } from './out_to_in3.js';
export { wire_assign as out_to_in } from './out_to_in.js';

// Spec a module which takes a wire type as parameter and 
// prepends a lower cased wire-mode. Pads the wires in both directions.
module wire_prepend( in0, out0 );
// looks like the here '/text' is what the wire is going to be encoded to ? 
module wire_prepend2( level0, out0 );
// looks like this is what output is going to beendmodule
