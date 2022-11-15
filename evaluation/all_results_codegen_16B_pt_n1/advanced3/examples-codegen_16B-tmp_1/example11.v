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

 always @( posedge clk, posedge reset)
 if(reset) present_state <= IDLE;
 else present_state <= next_state;
 always @( present_state, x )
 case ( present_state )
 IDLE : if(x) begin next_state = S1 ; z = 1; end
 S1 : if(~x) begin next_state = S10; z=1; end
 S10: if(x) begin next_state = S101; z=1; end
 S101 : begin end
 endcase

 endmodule 
// This is a FSM where in the combinational logic we execute
// the output more quickly than the clock
module jerk_tv(D, x, clk, reset, H0, H1, H2, H3);
	input D, clk, reset;
	input [15:0]H0;endmodule
