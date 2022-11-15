// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always@(posedge clk or posedge reset)
begin
// If the reset signal is high, set q to 0
// Otherwise, if the ena signal is high and the output of the decade counter q is 9, then reset q to 0
	if(reset)
	begin
	q = 4'b0000;
	end
	 else
	begin
	if(slowena)
	begin
	//Output of the decade counter 9 times the input value as code 
	q = q + 4'b0110;
	end
	//If the signal isn't enabled or the decade counter is overflowed, then return 0
	if(!slowena)
	begin
	q = 4'b0000;
	end
	end
end
//Whenever the state changes; update the decade counter to 0
always@(posedge clk)
begin
	if(!end
endmodule
