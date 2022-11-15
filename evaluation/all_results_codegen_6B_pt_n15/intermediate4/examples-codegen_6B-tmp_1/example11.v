// Design a Moore state machine with two states 0 and 1, one input in, and one output out. Reset state is 0.
module simple_fsm(clk, reset, in, out);
input clk;
input reset;
input in;
output out;
wire out;
reg present_state, next_state;
// In state 0, if in=1, stay in state 0. In state 0, if in=0, go to state 1
// In state 1, if in=1, stay in state 1. In state 1, if in=0, go to state 0
// out=1 in state 0 and out=0 in state 1
always @(posedge clk)
begin
    // start with state 0
    if (reset == 1)
        present_state = 0;
    else
        present_state = next_state;
    next_state = present_state;
    // pulse output when in state 0
    if (present_state == 0)
        out = in;
    else
        out = 1;
end
end
*/
#include <iostream>
#include "mcbd_bindings.h"
#include "mcbd_test.h"

using namespace std;

int main()
{
    bool g = false;
    multicore_bind(g, g);
    simulation::Simulation sim;
    MicroController mcu;
    int state = 0, mead;
    
    mcu.reg(&state:0, state);endmodule
