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


//always block that drives the output z, by specifying when to enable z to 1
always @ (next_state or x) begin
case (next_state)
IDLE : begin
z<=0;
end
S1 : if(x) begin 
z<=0; 
end 
else begin 
z<=0;
end
S10: if(~x) begin 
z<=0; 
end 
else begin 
z<=0;
end
S101: begin
z <= 1;
end
default: 
z <= 0;
endcase
end

//always block that gives current values of inputs
//always block that performs state transition

always @ (posedge clk or reset)
begin
if(reset)
present_state <= IDLE;
else
present_state <=next_state;
end
endmodule
