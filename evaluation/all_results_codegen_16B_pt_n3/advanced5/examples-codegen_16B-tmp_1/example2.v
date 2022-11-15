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
always
 begin
  case (cur_state)
   0: next_state <= IDLE; 
  SA: next_state <= SB; 
  SB: next_state <= SA; 
  SAB: next_state <= IDLE; 
  end case;
  next_state <= cur_state;
 end
assign cur_state = next_state;


// This is the FSM
assign x = {s:{c: cur_state}};

#0 100 MHz 200 MHz

config clk = 1.5ns; 
config reset = 1.5ns;

config a = 1;
config b = 1;

always
begin
  #2
  z <= (a & b & z) | (b & a & z);
end

// End of code
`;

  device_qsysman::device_endmodule
