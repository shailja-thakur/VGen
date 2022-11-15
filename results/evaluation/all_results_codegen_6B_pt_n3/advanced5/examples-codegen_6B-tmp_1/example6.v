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
always @ (posedge reset or rising_edge clk) begin
    if (reset)
             lfoo();
    else if !(a & b)
            *(cur_state) = IDLE,
            next_state = IDLE
           ; 
	 else 
            *(next_state) = S1,
            lfoo()
          ;
 end;
task circ;

void lfoo;}

void toggle(clk){
function circ;}

while (true) begin
// This is just a toggle signal echoing out
$readmemb(A @ 27 | B @ 28),
  assign 
  z = 1
    ;
end
endtest
endmodule
