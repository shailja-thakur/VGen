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


always block_synced
begin
  if rst is high
    present_state <= IDLE;
  else begin
    if (x='0') undefined; 
    else begin
      present_state <= S10;
    end 
    switch (present_state)
    reg [7:0] char;
    a external;
        with char
        begin
         if ((char == 0b1101) | (char == 0b0011))
           next_state <= S10;

         else if char == 0b0010
           next_state <= S101;
         if char == 0b0000
           next_state <= S11;
         default:
           next_state <= IDLE;
        end
    end
  end
end
endmodule
