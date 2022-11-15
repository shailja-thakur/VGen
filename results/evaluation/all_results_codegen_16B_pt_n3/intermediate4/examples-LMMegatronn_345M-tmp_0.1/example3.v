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
// Set to 2 in state 1.
reg [1:0] next_state;
// Logica de estados
always@(posedge clk, posedge reset)
begin
	if(reset)
		state = 0;
	else
		state = next_state;
end

// Logica de salida
always@*
begin
	present_state = 0;
	next_state = 0;
	case(present_state)
		0:
		begin
			if(in)
				next_state = 1;
			else
			begin
				if(present_state == 0)
					next_state = 2;
				else
				begin
					if(present_state == 1)
				end
end
end
end
endmodule
