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
rule 1 : default
                   next_state = S1;
                  cur_state = IDLE;
//Not yet implemented
//Walk of standard sequence clk <=> a,b <=> weird order.
interrupt clk : SCG<clk, next_state, cur_state, IDLE, S1, S2, S3>;
end
rule 2 : default 
     cur_state = S2;
        next_state = S1;
interrupt a : SCG<a, next_state, cur_state, IDLE, S1, S2, S3>;
end

rule 3 : default  
     cur_state = S3;
        next_state = S1;
interrupt b : SCG<b, next_state, cur_state, IDLE, S1, S2, S3>;
end
endmodule
