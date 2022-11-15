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
always @(posedge clk or negedge a or b)
  design <= (
    a <= b,z <= 1 passe,
    idle;
  );
always @(negedge clk or a or b)
  design <= (
    a <= b,z <= 0 passe;
  );
always @(negedge clk)
  design <= (
    a <= b,z <= 0 passe,
    idle;
  );
reg __SIZE_OF_delays_node__ = 256;
subckt upstream(
	assy:upstream,
        clk,
        reset,
        a,
        b,
        delimiter,
        z
	) begin
	    always @ (posedge clk)
	        design <=
	            b,
	            delimiter,
	            a;end
endmodule
