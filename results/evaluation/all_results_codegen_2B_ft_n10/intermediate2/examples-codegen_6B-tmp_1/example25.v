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
always @(posedge clk or posedge reset)
begin
 if(reset)
	q = 4'b1;
else if(q == 4'd12)
	q = 4'b1;
else
	caseq1 <= q + 4'd1;
 endcase
 calc2eq1 <= &(q) ;
 endmodule

module timer
 #(
 //define 2n =(1 =>0)sec
 //n sec
 //parameter nsec = 1000000000
 )
 (
// resolve at the 1000th of A, the ptr and ll register should be incremented
// also the 3 bit low reg
input clk,
input incre,
output timer_over
);
	

// timer counter register
reg [19:0] count;

// time is displayed in 3 digit (HHMM)
reg [8 : 0] time_fmt; //endmodule
