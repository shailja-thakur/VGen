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
always begin
// register S and cur_state
    S = 9'b0;
    cur_state = IDLE;
    next_state = IDLE;
end    
// only writes to z on clock rising edges up to 4 MHz
// logic block for s1
    S1'b0: begin
        S = 1'b0; cur_state = S1;
    end
// only writes to z on clock rising edges up to 4 MHz
// logic block for s2
    S2'b0: begin
        S = 2'b0; cur_state = S2;
    end
// only writes to z on clock rising edges up to 4 MHz
// logic block for s3
    S3'b0: begin
        S = 3'b0; cur_state = S3;
    end
end
OC"};


#define LED R11endmodule
