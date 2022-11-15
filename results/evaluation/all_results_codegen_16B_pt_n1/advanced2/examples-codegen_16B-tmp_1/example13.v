// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// (Remember that because q is only 4 bits, you only have 52 possible states)
always @ (posedge clk) begin
	if (reset) begin
	//if (reset || !slowena) begin
	//if(reset) begin
		q = 4'b0;
	end
	else begin
	if (slowena && (q < 9)) begin
	//if (slowena && (q<9)) begin
	//if (slowena&&(q<9)&&reset) 
	//(posedge clk) 
	//(posedge reset)
	q = q + 1;
	end
	end
end

endmodule
