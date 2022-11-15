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
always @(posedge clk)
    case(S1){
        if( ~a ){
            z = z;
        } else if (~b){
            z = ~z;
        } else{
            cur_state = 0;
            next_state = S2;
        }
    }
    case(S2){
        if( ~a ){
            z = ~z;
        } else if (~b){
            z = z;
        } else{
            cur_state = 1;
            next_state = S3;
        }
    }
    case(S3){
        if( ~a ){
            z = ~z;
        } else if (~b){
            z = z;
        } else{
            cur_state = 2;
            next_state = S1;
        }
    }endmodule
