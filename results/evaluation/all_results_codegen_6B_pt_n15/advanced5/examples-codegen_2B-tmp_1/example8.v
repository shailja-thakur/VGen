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
//
always @(posedge clk, negedge reset) 
begin
    if valb || vala then 
        cur_state = S1
    elseif !vala && !valb 
        cur_state = S2
    else 
        cur_state = S3
    S3 : cout << "g3 wot" end
end

//This is an FSM with an empty output z (0) when all for input a 0. In this sense, it always produces 0 - in all states.
//
//always @(posedge clk, negedge reset) 
begin
    if !a 
        begin
          if cur_state == S1 || cur_state == S2 || cur_state == S3 
             {
          next_state = S2
          } else {
                next_state = S3
            }end
endmodule
