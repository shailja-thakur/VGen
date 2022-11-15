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


next [0:0] next_state = 0;
always @(posedge reset or posedge clk) begin
  if(reset) begin
    present_state = IDLE;
    next_state = IDLE;
  end
  else begin
    // if clk is rising edge, then present state is expired; record new present state in present_state, and if present_state is IDLE,
    // record next state in next_state, and then send 0 to output z
    if(rising_edge(clk)) begin
      present_state <= IDLE;
      next_state <= IDLE;
      z <= 0;
    end

    if(present_state == IDLE) begin
      if(x == 1) begin
        present_state <= S1;
        next_state <= S1;
      end else begin
        present_state <=end
end
end
end
endmodule
