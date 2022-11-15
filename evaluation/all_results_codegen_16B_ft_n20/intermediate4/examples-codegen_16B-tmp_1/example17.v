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
always @( posedge clk or posedge reset )
if (reset ==1) begin
	present_state <= 0;
	next_state <= 0;
end

else begin
	present_state <= next_state;
end

always @( present_state or in )
if (present_state == 0) begin
	case (in)
	1 : begin 
	next_state <= 0; 
	out <= 0;
	end
	0 : begin
	next_state <= 0;
	out <= 0;
	end
	endcase

end

// In state 1, if in=1, stay in state 1. In state 1, if in=0, go to state 0
always @( present_state or 
in )
if(present_state == 1) begin
	case (in)
	1: begin 
	end
endmodule
