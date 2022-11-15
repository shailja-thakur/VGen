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
always @(*) clk <= ADV_T;
always @(*) zero_out <= ADV_N;
always @(*) a == a_sig or b = b_sig;
always @(*) b == b_sig and a = a_sig or a = inverted_input(a,next_state);
always @(*) z <= out_compand(idle_inv(cur_state) , b);
assign next_state =
  case (next_state)
  when( a = 1) then IDLE when b = 1 then S3 else "+";
endcase;
endmodule
