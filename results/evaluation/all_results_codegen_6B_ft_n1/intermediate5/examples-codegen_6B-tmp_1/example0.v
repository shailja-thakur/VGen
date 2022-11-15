// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(*) begin
if (load) out = data;
else begin 
	if(amount == 3'b110 || amount == 3'b111) 
	out = 8'h00;
	else begin
	out = out >> 1;
	out[7:1] = out[6:0]; // if amount is 0 then output is 
end // end else
end //end always
end
end
end
endmodule
