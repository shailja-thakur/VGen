// This is an FSM
module abro(
input clk,
input reset,
input a,
input b,
output z );
parameter IDLE = 0,
SA = 1,
SB = 2,
SAB = 3;
reg [1:0] cur_state,next_state;
// The output z is high when 1 is received for signals a and b in any order.
// If cur_state is IDLE and a and b are both high, state changes to SAB
// If cur_state is IDLE, and a is high, state changes to SA
// If cur_state is IDLE, and b is high, state changes to SB
// If cur_state is SA, and b is high, state changes to SAB
// If cur_state is SB, and a is high, state changes to SAB
// If cur_state is SAB, state changes to IDLE
// z is assigned one when cur_state is SAB
module FSCGC(input clk,input reset, *gen,input a,input b,output z);
#(p::i3153997(idle001,SAB),e,3(set(1,1,idle001,SB),set0(1,idle001,SA),
	set(1,0,idle001,SA),set0(99,idle001,SAB)),e2,
	p::sb01(clk,reset,SA,SB,e2),p::sb01(a,b,e2),e3(gen->SB,z)) begin
# (1) Initialize x to stateIDLE
p::init(cur_state,IDLE);
# (2) Repeatedly process z according to e
# (3) When x::input <- changed, the bitgroup for this pbitgroup is calculated
#	end
endmodule
