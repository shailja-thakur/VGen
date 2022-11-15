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
always @(posedge clk or posedge reset) begin
    z <= 0;
    if cur_state = S1 and a and b  then begin
//goto S1
        cur_state <= S2;
        z <= 1;
    end else begin
//goto S2
        if a then begin
//goto S4
            next_state <= S3;
        end else begin
//goto S5
            cur_state <= S1;
        end 
//goto S3
        if b and not a then begin 
//goto S4
            cur_state <= S3;
        end else begin
//goto S2
            next_state <= cur_state;
            if cur_state = S3 then cur_state <= S1;
        end
//goto S2
    end
end
endmodule
