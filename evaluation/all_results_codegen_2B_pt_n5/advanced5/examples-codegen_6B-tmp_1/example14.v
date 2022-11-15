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
//S1,S2,S3 are defined by the FSM version
def behavior():
        if (next_state == S1 and a) or (next_state == S3 and b):    // Inside of S2 the output is high.  
                next_state = S2;
}
module Copy(
input clk, reset,
input t, 
output o );
def FSM_State_Lookup_1(State_Parameter):
        if State_Parameter == 0:
                return S1;
        elif State_Parameter == 1:
                return S2;
        else:
                return S3;
def FSM_State_Lookup_2(State_Parameter):
        if State_Parameter == 0:
                return S2;
        elif State_Parameter == 1:
                return S3;
        else:
                return S1endmodule
