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
function begin() {
    cur_state = IDLE;
}
always @(posedge clk) begin
    if (reset) begin
        cur_state <= IDLE;
        next_state <= IDLE;
    end else switch (cur_state)
    case IDLE:
        if (a) begin
            cur_state <= S1;
            next_state <= S2;
        end else if (b) begin
            cur_state <= S2;
            next_state <= S3;
        end else begin
            cur_state <= S3;
            next_state <= S2;
        end
        next_state <= cur_state;
            
        
    case S1:
        if (a) begin
            z <= 1;
            next_state <= S2;
        end else if (b) begin
            z <= 1end
end
end
endmodule
