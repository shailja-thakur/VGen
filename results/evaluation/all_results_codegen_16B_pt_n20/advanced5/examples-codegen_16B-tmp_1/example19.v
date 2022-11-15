// This is an FSM
module abro(
input clk,
input reset,
input a,
input b,
output z );
parameter IDLE = 0,
SA = 1,
SB = 2,
SAB = 3;
reg [1:0] cur_state,next_state;
// The output z is high when 1 is received for signals a and b in any order.
// If cur_state is IDLE and a and b are both high, state changes to SAB
// If cur_state is IDLE, and a is high, state changes to SA
// If cur_state is IDLE, and b is high, state changes to SB
// If cur_state is SA, and b is high, state changes to SAB
// If cur_state is SB, and a is high, state changes to SAB
// If cur_state is SAB, state changes to IDLE
// z is assigned one when cur_state is SAB
reg  z = 0;
always @(posedge clk or posedge reset)
write z
# @(* next_state = mine*)
# @(* cur_state = mine*)
begin
  if (!reset) begin
    cur_state <= IDLE;
    next_state <= IDLE;
  end
  else begin
    switch (cur_state)
    case IDLE:
      if (a) begin
        if (b) begin
          z <= 1;
          cur_state <= SAB;
          next_state <= SAB;
        end
        else begin
          z <= 1;
          cur_state <= SA;
          next_state <= SA;
        end
      else begin
        z <= 1;
        cur_state <= SB;
        next_state <= SB;
      end
    case SA:
      if (b)end
end
end
endmodule
