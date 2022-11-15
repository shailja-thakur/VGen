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
// if only a is high, state changes to SA
// if only b is high, state changes to 
// next_state = status from params is also constant.
reg [1:0] s_reg;
// Edge detect. The state is not changed unless this
// is true. This means it is also reset to IDLE
always @(posedge clk, posedge reset) begin
	if(reset) begin
	cur_state <=IDLE;	 	//Initial state, should be looking at params
	s_reg <= IDLE;	 	//Defaults to IDLE.
	end
	else begin //state not reset
	cur_state <= next_state;	//update state
	s_reg <= s_reg;	//update status register
	end //end else
end //end always
always @(s_reg) begin
	case(s_end
end
endmodule
