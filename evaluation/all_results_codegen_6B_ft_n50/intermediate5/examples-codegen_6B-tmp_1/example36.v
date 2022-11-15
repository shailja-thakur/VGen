// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
/*
always @(posedge clk or posedge reset)
begin
	if(reset)
	begin
	out={7'b0000000,data[0],data[6:1]};//8'b00000001;
	end
	else if(load)
	begin
	out={out[6:0],1'b0};
	end
	else
	begin
	case(amount)
	3'd1:out={out[5:0],6'b000000};
	3'd2:out={out[4:0],7'b0000000};
	3'd3:out={out[3:0],8'b000000};
	3'd4:out={out[2:0],9'b000000};
	3'd5:out={out[1:0],10'b000000};
	3'd6:out={out[end
end
endmodule
