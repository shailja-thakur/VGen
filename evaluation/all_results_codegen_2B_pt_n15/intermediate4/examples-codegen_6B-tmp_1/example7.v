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
// a rising edge in clk goes to state 1 and falls to state 0
//a falling edge in clk goes to state 0 and falls to state 1 
	always @ (posedge clk)
	begin
	 if (reset) //if the fsm is reset, both in and out are 0
	 begin 
	 next_state <= `S0;
	 present_state <= `S0;
	 end
	 // Check if the input is equal to the present state, which would be stg0 or stg1 and send it to output if so
	 else if( {`S1, `S0} == present_state)
	 begin
	 next_state <= `S0; 
	 end
	 else final_state <= next_state; // Make final_state into next_state
	 if(`S0 == valid_in_state)
	 note_triggerend
endmodule
