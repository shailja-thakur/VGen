// This is a counter that counts from 1 to 12
module counter( 
    input clk,
    input reset,
    output reg [3:0] q
); 
// update q on the positive edge of the clock according to the following cases:
// on reset, assign q to 1
// else if q is 12, assign q to 1
// else, increment q by 1 
//
always @(posedge clk or posedge reset) 
begin 
	if (reset) 
	begin 
	state = 1 ; 
	q = 4'b0001 ; 
	end 
	if(q == 4'hf) 
	begin 
	state =0 ;
	q = 4'b0001;
	end
	else 
	begin 
	case(state) 
	1: begin 
	if( ~q[3] ) 
	begin 
	state =0 ;
	q = q ; 
	end 
	else 
	begin 
	q = q + 4'h1 ; 
	end 
	end 
	
	endcase 
	end
end 
endmodule
