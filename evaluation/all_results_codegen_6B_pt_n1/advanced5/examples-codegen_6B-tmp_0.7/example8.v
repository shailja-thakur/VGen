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
always @(posedge clk) begin
 if (cur_state == IDLE) begin
   if (a > b) begin
     next_state <= S1;
   end else begin
     next_state <= S2;
   end
   cur_state <= next_state;
   if (next_state == S1) begin
     z <= a;
   end else if (next_state == S2) begin
     z <= b;
   end else if (next_state == S3) begin
     z <= 1'b0;
   end
 end else begin
   if (a > b) begin
     next_state <= S3;
   end else begin
     next_state <= S1;
   end
   cur_state <= next_state;
   if (next_state == S1) begin
     z <= a;
   end elseend
end
endmodule
