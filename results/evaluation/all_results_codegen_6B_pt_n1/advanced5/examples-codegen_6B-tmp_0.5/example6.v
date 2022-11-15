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
  if (reset) begin
    cur_state <= IDLE;
  end
  else begin
    if (a) begin
      cur_state <= S1;
    end
    else if (b) begin
      cur_state <= S2;
    end
    else begin
      cur_state <= IDLE;
    end
    next_state <= cur_state;
    if (a && b) begin
      z <= 1;
    end
    else if (a && !b) begin
      z <= 0;
    end
    else if (!a && b) begin
      z <= 1;
    end
    else begin
      z <= 0;
    end
  end
end
endmodule
