// This is an FSM.
module abro(
input clk, reset,  
input a,  b,
output z );
parameter IDLE = 0,
S1 = 1,
S2 = 2,
S3 = 3;
reg [1:0] cur_state,next_state;
//This is an FSM with the output z high when either of the input signals a or b are high irrsepective of their order.

always @() begin
    if (1'b00==a)
        next_state = IDLE;
    else if (1'b00==b)
        next_state = S2;
    else if (reset)
        next_state = IDLE;
    else if (cur_state == IDLE)
        begin
	// Move to S1 when a goes low.
        if (1'b1==a)
            next_state = S1;
        // Move to S3 when b goes low.
        else if (1'b1==b)
            next_state = S3;
        end
    else if (cur_state == S1)
        begin
	// Move to S2 when b goes low.
        if (1'b1==b)
            next_state = S2;
        // Move to S1 whenend
end
endmodule
