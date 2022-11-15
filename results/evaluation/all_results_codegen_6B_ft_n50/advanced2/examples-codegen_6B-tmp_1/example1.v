// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(posedge clk or posedge reset)
begin
 if(reset) q=0; //if we are reset, then set back to 0
 else if (slowena) if (q == 9) q=0; //if q == 9, then if we are incrementing, then set back to 0
 else q=q+1; //if q is not 9 and we are incrementing, then just add 1
 
end
 endmodule
// Design a decade counter that counts from 0 through 9, inclusive for + and -
// incluse reset and up counting and reset and down counting.
//
//Do not count with enable at falling edge after as we use initial event to clear the counter.

module count_TB();

reg clk;
reg rst;
reg clr;
wire [3:0] q;

initial 
begin
$dumpfile("countendmodule
