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
//The FSM fills the buffer when both signals are low and then outputs the buffer when both signals are high
always @(*) begin
    if (a == 1 && b == 1) begin
        next_state = IDLE;
        next_state = IDLE;
    end
    else if (cur_state == IDLE) begin
        next_state = S1;
    end
    else if (cur_state == S1) begin
        next_state = S3;
    end
    else if (cur_state == S2) begin
        next_state = S3;
    end
    else if (cur_state == S3) begin
        next_state = S2;
    end
    else begin assert(false); end
end

// This is an FSM.
module abro(
input clk, reset,  
input a,  endmodule
