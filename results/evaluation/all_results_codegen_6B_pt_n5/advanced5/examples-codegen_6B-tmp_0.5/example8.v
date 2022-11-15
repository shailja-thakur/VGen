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
reg [1:0] a_or_b,z_out;
always @(posedge clk) begin
  if(reset) begin
    cur_state <= IDLE;
  end
  else begin
    if(a) begin
      cur_state <= S1;
    end
    else if(b) begin
      cur_state <= S2;
    end
    else begin
      cur_state <= S3;
    end
    next_state <= cur_state;
    //This is a state machine that outputs a high signal when either of the input signals a or b are high irrsepective of their order.
    a_or_b <= a or b;
    z_out <= a_or_b or z;
  end
end
endmodule
