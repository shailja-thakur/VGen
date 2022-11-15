// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
module wire_assign_reverse( output out, input in );
// assign in to out
module wire_assign_swap( output out, input in );

#include "wire_assign.h"

//
// Routing the control signals of the wire assign module to a single output
//
// Unit test the wire assign module by assigning the control signal to the
// output of this module.
//

control_if<wire_assign> cwire_assign_if;

<wire_assign> wire_assign( input in, output out ) {
 cwire_assign_if.b <= in;
 out <= cwire_assign_if.a;
}

<wire_assign_reverse> wire_assign_reverse( output out, input in ) {
 cwire_assign_if.a <= out;
 out <=endmodule
