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
    present_state = IDLE;
    next_state = IDLE;
end


reg led = 0; 

begin 
// the output led is asserted with the output when s11 is true
s11_handler(clk,reset,x,led); 
reg [2:0] s10_state, s11_is_set; 
s10_handler(clk,reset,x,s10_state, s11_is_set); 

GPOS = 1;
GPOS=;
GPOS=3
GPOS=;
GPOS=1
GPOS=;
GPOS=1
GPOS=
GPOS=
GPOS=
GPOS=
GPOS=
GPOS=
GPOS=
GPOS=
GPOS=
GPOS=
GPOS=
GPOS=
GPOSend
endmodule
