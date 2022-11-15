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


begin:
reg [2:0] p2;   // P2 indicates what square can a square is next: S1(4\'h3), S10(2\'h2)
			  // Note: Where the fourth nibble of a word is in the carry bit.
			  //       The third nibble is the MSB or LSB of the operand and the
			  //       remaining bits are then cleared anyway.
reg [7:0] present_state;

always @(posedge clk or posedge reset) begin
  z <= 0;
  next_state <= IDLE;
  switch( ( p2 >>4)&0xF )       // bitwise and with a 31-bit mask combines the four bits
  {                    // for p2 with the lsb nibble (PC bits 4-7)
    case  0u: 
      nextend
end
endmodule
