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
// Set 0 in=1 when in=0. Otherwise, stay in state 0.
always@(state or in)
begin
STATE <= (present_state!=STATE) ? state : current_state;
// Set default, inputs as specified in the shift register.
end

assign out = (present_state==STATE) ? in : present_state;
assign changed = (present_state==STATE && next_state!=STATE);
assign another = (present_state!=STATE && next_state!=STATE && next_state==STATE);

// and state output control. Continuous off when the current state enable is 1.
// concurrently guaranteed by the virtual event.
assign evup = (present_state==STATE) ? 0 : 1;
assign exit = ~present_state;

always@(posedge clk)
begin
case(present_state)end
endmodule
