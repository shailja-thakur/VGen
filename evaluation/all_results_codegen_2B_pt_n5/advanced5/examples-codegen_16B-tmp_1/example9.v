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
//It may come in a parrallel high. However upon reset you are put into the idle FSM.
module osc_processor( clk, adr, a_high, a_low, b_high, b_low, RESET, ADR, A_MUX, CLS);
  instantiation
//    UNDEFINED : (&RESET, &ADR, &A_MUX, &CLS);
    portmap(&RESET, 2);
    portmap(&CLS, 1);
    ports( (*clk, 1), (*adr, 0), (*a_high, 0), (*a_low, 0), (*b_high, 0), (*b_low, 0));
    outputb -Z((*cur_state),(*next_state));
    always@(posedge clk) begin
        next_state <= (*ADR==4)?end
endmodule
