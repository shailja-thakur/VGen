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


wire packet_start, snk_start, pipeline_start, recon;
Reg [6:0] pktcount, nextKC, nextPC, reconV;
Reg [2:0] present_state_raw, next_state_raw;
Reg [34:0] currKC, currPC;
Reg [7:0] prevKC, prevPC;
Reg [3:0] tmpPC, tmpKC;
Reg [5:0] currKC_raw, currPC_raw;

adv_fsm(
    clk, reset, x, z ); 

//ange: start clock for rconvey input and reset outputs
always begin
if (reset = %1) begin 
   @(posedge clk) begin
         reset_fsm();
         @(posedge clk) begin
            if (x) begin
              presentend
end
end
end
end
endmodule
