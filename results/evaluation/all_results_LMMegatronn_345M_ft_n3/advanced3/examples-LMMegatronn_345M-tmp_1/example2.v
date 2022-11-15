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


 always @ (posedge clk, posedge reset) begin
 if (reset) begin
   clear_count <=0;  // default values
  end else begin
   // if the current state is blank or we should reset state at the default value
   if (state == S0) begin // cleared state when all switches are a toggle
      begin
         clear_count <=clear_count+1;
      end
        else begin
        clear_count <=0;
      end
  end
 end
 
 assign z = (clear_count+1)%16;
 
 
endmodule
