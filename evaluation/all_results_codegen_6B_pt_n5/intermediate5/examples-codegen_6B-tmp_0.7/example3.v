// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk or (reset and load))
begin
	out <= (load ? data[7:0] : left_rotate(out, amount));
end

// ---------------------------------
// --- MAIN
// ---------------------------------

// the top-level function
function main()
begin
	// initialize the clock
	clk <= 1'b1;
	reset <= 1'b1;
	
	// the input registers
	data <= 0x00;
	load <= 1'b0;
	
	// the output register
	out <= 0x00;
	
	// the shift register
	if (load)
		data[7:0] <= 0x00;
	else
		data[7:0] <= left_rotate(data[7:0], amount[7:0]);
	
	// run the simulation
	end
endmodule
