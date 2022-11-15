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
clk <= 1'b0;
//Associate a or b to each FSM state
always @(posedge clk) begin
  cur_state <= a; next_state <= b;
   if( next_state == S1 ) begin
	next_state <= S2;
	end
   else if( next_state == S2 ) begin
	next_state <= S3;
	end
   else if( next_state == S3 ) begin
	next_state <= 0;
	end

//-------------- Circuit Init ---------------
/************  Idle Case ***********
next_state <= IDLE;
cur_state <= IDLE;

/***************** Connect code4in1 ********
delay (3.1e-9);
BGL signal1 <= '0';
BGL signal2 <= '0';
delay (cc_10ns);
end
endmodule
