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
input_wire [2:0] inputs;
lib list [ (1)
	 (1) state ( IDLE ) ~ ( a      ) ,
	 (2) state ( a      ) > ( b      ) ,
	 (3) state ( a      ) < ( S1    ) ,
	 (4) state ( b      ) < ( S2    ) ,
	 (5) state ( b      ) > ( S3    ) ,
	 (6) state ( S1    ) > ( S2    ) ,
	 (7) state ( S1    ) < ( S3    ) ,
	 (8) state ( S2    ) > ( S3    ) ,
	 (9) state ( S2    ) < ( S1    ) ,
	 (10) state ( S3    ) > ( S1    ) ,
	 (11) state ( S3    endmodule
