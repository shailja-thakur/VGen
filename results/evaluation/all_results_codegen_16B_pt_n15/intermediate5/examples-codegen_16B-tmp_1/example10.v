// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always #(!load) begin // this is so a clock cycle is necessary when loading data to out
	if(reset) begin // reset only works as a translational shift operation
		out = 0;
	end
	else if(~load) begin // left shift
		out = out << amount;
		out = out | data;
	end else begin // rotation
		// filling up rotational b shift register
		// repeatedly shift out by 2 and add current value to it
		// the amount variable is changed to carry the extra lest significant bit
		amount = amount - 1;
		out = data;
		out = out << amount;
		out = out | out >> 1;
		out = out | data >> 1;
	end
end

// right shift and rotate operation
module right_rotate(clk,reset,amount,data,load,out);
input clkendmodule
