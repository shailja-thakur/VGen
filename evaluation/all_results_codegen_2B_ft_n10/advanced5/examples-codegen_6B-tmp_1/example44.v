// This is an FSM 
module abro(
input clk,
input reset,
input a,
input b,
output z 
);
parameter IDLE = 0, SA = 1, SB = 2, SAB = 3;
reg [1:0] cur_state,next_state;
// Update state or reset on every clock edge.
// Output z is asserted 1 when the current state is SAB.
// Nest state generation logic:
// if input a and b both are high, state changes to SAB. 
// Also, when asserted, reset is applied mid-state.
// Each output is generated only when the corresponding
// clock edge ia asserted.
genvar g;
assign z = (cur_state==SAB)&&a && b;
generate for(g=0;g<2;g=g+1) 
begin: STAGE
	assign inp_mux[g] = ((cur_state==SA)&&a)||((cur_state==SB)&&b);

	//Select signal
	assign stm[g] = ((cur_state==SA)&&a)||((cur_state==SB)&&b);
	//Enable signal to control ouput
	assign entm[g] = ((cur_state==SA)&&a)||((cur_state==SB)&&b);

	//Output logic
	assign zend
endmodule
