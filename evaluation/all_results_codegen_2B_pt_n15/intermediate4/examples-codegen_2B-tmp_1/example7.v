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
assign present_state=0, next_state=0;

always @*   // @ ||/1/1*p/0/0/1/n
state0
{
    if (out==1)
		next_state=1;

	out=in;
}

always @*   // @ ||/1/1*p/0/1/0/n
state1
{
	next_state=0;
	if (in==1)
		next_state=1;
}


always @(*) begin
    if ((wld==1) and (clk==1))
    {
    	next_state=gtoh(n)?'0':'1';
    }
end

always @(*) begin
    present_state=from_string(n_ltoa(n));
end

always @endmodule
