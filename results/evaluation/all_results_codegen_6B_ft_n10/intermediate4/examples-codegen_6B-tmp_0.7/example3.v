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
assign out = present_state & in;

always @(posedge clk or posedge reset)
if (reset) begin
	// State transition logic: next_state = 0; 
	present_state <= 0;
end else begin
	// State transition logic: present_state = next_state;
	present_state <= next_state;
end

// State encoding logic: next_state = encode(in);
always @(in)
case(in)
	1'b0: next_state = 2'b00;
	1'b1: next_state = 2'b01;
endcase

endmodule
