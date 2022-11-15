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
always @(posedge clk) begin
    if (cur_state == IDLE) begin
        	cur_state == next_state;	
			
			flag = s == a?'a':b?'a':'b';
			z == 1'?next_state = S3:'next_state = S2';
		
		end
	end
	
notch: always begin
	if(s == a) begin
		next_state = S1;
	end
	if(s == b) begin
		next_state = S2;
	end
end

notch_reset: always begin
reset <= '1';
end

line1: always begin
	if(p == a) begin
		next_state = S1;
	end
	if(p == b) begin
		next_state = S2;
	end
	end
endmodule
