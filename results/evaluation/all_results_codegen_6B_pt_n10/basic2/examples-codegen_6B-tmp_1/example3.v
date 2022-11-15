// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    out <= a & b;

// -----------------------------------------------

void eval_and_gate( and_gate or_gate, hwb_logic input_ls );

// --------------------------------------------------

// Basic module: an AND gate is implemented by an OR gate.
#include <irep_tools/implementation_base.hpp>

/* Implementation code for module and_gate */

#include <irep_tools/rpn.hpp>
#include <irep_tools/info.hpp>
#include "and_gate.ih"

using namespace std;
using namespace fir;

void eval_and_gate( and_gate or_gate, hwb_logic input_ls )
{
    typedef hwb_logic input;

    // get the types of the current inputs
    rpn_callbacks::set_input(endmodule
