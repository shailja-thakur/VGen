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


always @(*) 
begin 
present_state = next_state;
end 

always @(*) 
begin 
 //if the source or destination data are not available or the channel is already open
 if (data_out[1]==1'b0 ) 
	next_state = IDLE; 
 //if SRV is closed, the master should send EOP and SD_complete, let tb_categorize know
 else if (dest_channel_valid[1]==0) 
	next_state = S1; 
 //if channel is not open, but SRV is requesting directory information fork this task and
 else if (get_txn_out==1'b1) begin
 	next_state = S1; 
 end 
 //for all other cases, see if the master is sending directory/IOD type commanDS over theend
endmodule
