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
begin
  cur_state = IDLE;
    z <= IDLE;
  end
begin
  switch (cur_state)
  begin
    case IDLE:
    begin
      if (clk == S1 || clk == S2 || clk==S3)
      begin
        if a == S3 || b == S3 ||  a == b
        begin
          z <= S3;
          cur_state = S3;
        end
      end;
      if a == S2 || b == S2 ||  a == b
      begin
        z <= S2;
        cur_state = S2;
      end;
      if a == S1 || b == S1 ||  a == b
      begin
        z <= S1;
        cur_state = S1;
      end;
    end
  end
end
endendmodule
