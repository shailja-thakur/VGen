// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk)
begin
	if(reset)
	begin
	if(load)
	 begin out<= data; end
	else begin
	case(amount)
	 3'd0:begin out <= out; end
	 3'd1:begin out <= (|out) ? (|$unsigned(data^out)) : data; end
	 3'd2:begin out <= out >> 2; end
	 3'd3:begin out <= out >> 4; end
	 3'd4:begin out <= out >> 5; end
	 3'd5:begin out <= out >> 6; end
	 3'd6:begin out <= out >> 7; end
	 3'd7:begin out <= out >> 8; end
	 3'd8:begin out <= out >> 9; end
	 3'd9:begin out <= out >> 10; end
	 default:beginend
end
end
end
endmodule
