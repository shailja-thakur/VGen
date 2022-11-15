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

    always constrain clk=0;
    always constrain reset=1;
    always constrain adi=0;
    always constrain x=1;
    always constrain x=0;
    initial begin
        
        next_state = IDLE;         // start up in IDLE state with standard reset value
        algorithm 
	if(reset = 1) begin
                next_state = IDLE;
	end
	else begin
                if( present_state = Idle ){
                    next_state = next_state = S1;
                    z = 1;
                } else if ( present_state = S1 ) {
                    if (x = 1) {
                    next_state = next_state = S10;
                    } else {
                        next_state = IDLE;
                    }
                } else if ( present_state = S10 ) {end
end
endmodule
