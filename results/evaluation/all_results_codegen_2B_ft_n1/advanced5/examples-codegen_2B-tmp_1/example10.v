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
state states is
S1_0 <= active  z;
S2_0 <= input [2] ; 
S3_0 <= not (input [2]) && not  z ; 
reg [23:0] out0;
STATE
{
    pre done;
    S1 (cur_state == S1(2), S2 (cur_state == (PCLK() <= input[2]),S3 (cur_state == S3 (input[0] == 0)),0), org(cur_state)) ;
    trigger done conns; 
    S1_1<="H" family (S1,S3 , S2) ; 
    S1_1_0<="H" family (S1,S3 , S2) ; 
}
endstate;
end state; 

REG mPFCOut_1[] = { z[endmodule
