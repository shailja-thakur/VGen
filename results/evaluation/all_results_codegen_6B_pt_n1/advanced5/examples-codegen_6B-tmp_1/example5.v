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
always #(1) $display("\nznv_rpc : state machine\n\n\n");
always #(1) $display("::%d : :  input a[%d] :  %d :::",QUERY_PORT,QUERY_PORT,a);
always @(posedge clk = !reset and !a) #(1) $display("::+00: :  reset :  %d :::",RESET_PORT,RESET_PORT,reset );

always @(posedge clk) begin begin
cur_state <== IDLE;
a = b;
end    begin

always @(posedge clk or reset) begin
$display("::%d : :  input b[%d] :  %d :::",QUERY_PORT,QUERY_PORT,b);
if ( b == IDend
end
endmodule
