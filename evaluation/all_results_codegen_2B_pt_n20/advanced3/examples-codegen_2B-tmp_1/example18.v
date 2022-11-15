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


initial begin
reset_n <= reset;
reset <= reset;  
clk <= clk;
x <= x;
present_state <= IDLE;
next_state <= IDLE;
z <= 1;


//CS101 inside signal
if((x==1)) begin 
next_state <= S10;
end else begin 
if(x==0) begin 
next_state <= S1; 
end else begin 
next_state <= IDLE; 
end
//print "#### next state is set to S1 if x=1  and present_state is S101 [IDLE = 0], otherwise next_state is zero  ####";

initial state_init();
always @(posedge clk)
begin
if((x==1)) begin
if(present_state==IDLE){
//print "#### state =  IDLE - S101end
end
end
end
endmodule
