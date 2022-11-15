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

 _always @(posedge clk or posedge reset) begin
  if ( reset == 0 ) begin
    present_state <= IDLE;
  end else begin
    present_state <= (IDLE);
  end

end


// This function is used to delay the clock 10 cycles. 
_reg delay_fp(1 downto 1);
_reg data_delayed;
_reg clk_delayed;
_reg clk_ri = 0;
_reg rst_new;
_reg prev_present_state = IDLE;
_reg enable = 0; //_reg = 1 // enable to test
_reg cnt = 0; //for testing

_always @(posedge clk or posedge x) begin
  if ( cnt == 0 ) begin
    delay_fp <= 0;
    data_delayed <= x;  
    end
end
endmodule
