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


// Declare 3 parameters, "z", "y", "x"
parameter int z=1, y=1, x=0;

// z=1
assign z=1;


// y=1
reg [1:0] y;
assign y=1;


// x=1
reg [1:0] x;
assign x=1;


// Process equations in behavioral specifications as appropriate
always @(posedge clk or (!rst) and reset) begin
        // current state is IDLE
        if (next_state = IDLE) begin
        	if(x = 1) then
        		z = 1;
        	else
        		z = 0;
        	next_state = S1;
        end
        // current state is S1
        else if (next_state = S1) begin
        end
end
endmodule
