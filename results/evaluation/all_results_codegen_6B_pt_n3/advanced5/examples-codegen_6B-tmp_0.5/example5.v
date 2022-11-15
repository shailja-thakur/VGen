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
reg [1:0] z_state;
reg [1:0] a_state,b_state;
always @(posedge clk) begin
  if (reset) begin
    cur_state <= IDLE;
    next_state <= IDLE;
    z_state <= z;
    a_state <= a;
    b_state <= b;
  end
  else begin
    switch(cur_state)
    case IDLE:
      if (a_state == 1) begin
        next_state <= S1;
        z_state <= 0;
      end else if (b_state == 1) begin
        next_state <= S2;
        z_state <= 1;
      end else if (a_state == 0 and b_state == 0) begin
        next_state <= S3;
        z_state <= 0;
end
end
end
endmodule
