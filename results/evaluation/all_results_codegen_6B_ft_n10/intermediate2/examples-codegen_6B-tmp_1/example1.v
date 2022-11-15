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

always @( posedge clk or posedge reset )
begin
	if ( reset ) begin
	// setting the counter to 1 on reset
	// very specific case of 12 frequency divisions...
	// basically, the code will reset the counter at the divisible frequency
	// for example, if the timer were set to reset every 100ms, then
	// only multiples of 100ms occur
	//Notice:the case is different from the ReportLab example
	//http://www.reportlab.co.uk/creditcards/creditcardcycles.html
	q = 1; 
	end else if(q == 12)begin
	q = 1; 
	end else begin
	q=q+1; 	
	end
end


endmodule
