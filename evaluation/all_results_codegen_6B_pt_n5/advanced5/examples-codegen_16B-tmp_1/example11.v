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
//This can be implemented using either the C++-style double buffered shift register with the Q&D implementation of the FSM.
CSR gsbl(
IDLE,
S1, !a | b, 
S2, b,
S3, !b);

//This is an FSM that invert the logic output to write.
module invert( input i );
	input z;
	output out;
	number i_val, bit_num, mask;

	reg [1:0] bit_num_r, bit_num_w;
retrieve
	bit_num_r <= bit_num,
	bit_num_w <= bit_num + 1,
	out(this.out);
enumeration <bit_num+1> act;
reg [bit_num + 1:0] bit_value;
reg [1:endmodule
