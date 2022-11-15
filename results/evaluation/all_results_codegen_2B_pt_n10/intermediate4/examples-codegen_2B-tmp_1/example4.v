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
machine SimpleFSM ()
{
    input aux, aux1, aux2, fsm_next_state;
    clk:in, reset:reset, in:in, out:out;

    always @(posedge clk)
    begin
        // ------- 0 -------
        if (reset == 1)
        {
            aux1:set_state();
            aux1:do();

            if (in)
                out = 0;

            present_state = aux;
            aux1:done();
        }
        // ------- 1 -------
        else
        {
            aux1:set_state();
            aux1:do();

            if (in)
            {
                if (aux1)
                {
                    aux1:done();
                }
                fsm_next_state = 0;
            }
            else
            {
                end
endmodule
