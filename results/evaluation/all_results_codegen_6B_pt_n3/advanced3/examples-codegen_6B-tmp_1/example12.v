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







// auto-generated code ends here
end



module style_pam8L(clk, dout, dreset, x, dt, dtst} of celltype);
INSTANCE fanout [8:0] cell_pam8L;
KEEP, DONT_TOUCH, LOCAL input clk, dout, dreset, x, dt, dtst;
(* KEEP *)
cell_pam8L: cell_tmp1
dout <= {0, dtst, dreset, dout, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1} & (dtst == 0.0f) & cell_pam8L.cell_tmp1(1);

(* CANCELLATION *
 cell_tmp1 <= _win(unique(conendmodule
