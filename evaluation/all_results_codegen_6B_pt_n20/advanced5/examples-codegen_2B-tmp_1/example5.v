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
output state;

//output [7:0] z;

event start;

//********************************DS ISR removed*****************************//
//(C) 2015 Glale Consulting (bwross@glale.co) //
//********************************~~~~**//

//isr demo of bwross.com//
global state:S2,state:next_state;
begin
//Start is parsed through as soon as a is high since it is the leading state.
state.next_state=S1;
while ((!not state.next_state) && (clk>idle)) begin
state.next_state=next_state;
end;


//PinOutput(clk)
posedge clk;

//PinOutput(next_state)
posedge next_state;

//*****************************************//

//-----------------------------------------------------------------------------//
//This is just aend
endmodule
