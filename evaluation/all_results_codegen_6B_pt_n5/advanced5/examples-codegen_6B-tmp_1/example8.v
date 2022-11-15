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
reg [0:0] a, b;
always @* {
    z = (a;: a & b;: a | b);
}

    abro begin: clk, reset, a,b		    	end: cur_state,next_state;
    
    void action(){                              
    	if(a==1 && b==1){//a first
    		cur_state = S1;
    	        // set the next state
    		reg [0:0] tmpSta_1, tmpSta_2, tmpSta_3;
    	        next_state = ( b<a)? IDLE: (tmpSta_1=a,tmpSta_2=b)? a: b;
    	}
        	else if(a==1 && b==0){//a first
    		 cur_state = S1;
endmodule
