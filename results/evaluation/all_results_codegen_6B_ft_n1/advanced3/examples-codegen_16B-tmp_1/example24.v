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



// FSMD TFFs
// input clk as source clock
// present state and next state registers
reg [8:0] pre_reg; 
reg [8:0] next_reg;
wire z1;
wire z0;
// output TFF's
reg z1_reg;
reg z0_reg;
// gate level signal generated
wire [1:0] anyedge;

assign anyedge[1] = (x^pre_reg[1]) | (pre_reg[1] & pre_reg[8]);
assign anyedge[0] = (x^pre_reg[0]) | (pre_reg[0] & pre_reg[8]);


// mux controlled by anyedge

always@(x or pre_reg or anyedge)
begin
case(anyedge)
2'b00 : z1end
endmodule
