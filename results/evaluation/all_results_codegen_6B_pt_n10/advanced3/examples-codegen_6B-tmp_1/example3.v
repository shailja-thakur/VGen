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

  always @(posedge clk) begin
    present_state <= next_state;
    next_state <= IDLE;
  end

  assign z(x) <= present_state == S101;
"""

testVectorList = [(((1, 0, 1, 0, 0, 0, 1, 0), 7), 0, 0)
    ,, (((0, 0, 1, 0, 0, 0, 1, 0), 7), 0, 0)]

nbTest = len (testVectorList)

for testId in range(nbTest):	 
	s = testVectorList [testId][0]

	print()
	print list(s)

 	prefix = ' ' if ((testId % 3) == 0) else ''
	print '{0}---next_state: ', prefix,
	printList('' ,testVectorListendmodule
