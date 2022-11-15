// This is a finite state machine that recognizes the sequence 101 on the input signal x. 
module adv_fsm(
input clk,
input reset,
input x,
output z ); 
reg [1:0] present_state, next_state;
parameter IDLE=0, S1=1, S10=2, S101=3;
// output signal z is asserted to 1 when present_state is S101 
// present_state is reset to IDLE when rset is high
// otherwise it is assigned next state
// if present_state is IDLE, next_state is assigned S1 if x is 1, otherwise next_state stays at IDLE
// if present_state is S1, next_state is assigned S10 if x is 0, otherwise next_state stays at IDLE 
// if present_state is S10, next_state is assigned S101 if x is 1, otherwise next_state stays at IDLE 
// if present_state is S101, next_state is assigned IDLE

    // states
    always@reset if (reset) begin
            next_state = IDLE;
    end
    always@clk begin next_state = fsm(present_state, next_state, x); 
    end
    adv_fsm() driving_fsm(
        input clk,
        input reset,
        input x,
        output z
     );
`

// A driving FSM that prints the output when S1 S10 S101 is asserted in a sequence.
// init(v) adds a signal, y, with value v.
// inv(a) sets a before it returns.
`
// wrapper functions to unpack signal value logic
//DriverNode_inputs_DriverNode_init(214)
//DriverNode_inputs_DriverNode_inv(215)
//DriverNode_inputs_DriverNode_outputs_DriverNodeendmodule
