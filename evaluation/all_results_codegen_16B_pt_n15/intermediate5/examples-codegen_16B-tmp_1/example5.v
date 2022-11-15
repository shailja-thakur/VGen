// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
reg out_temp;
always @(posedge clk) begin
	if (load) begin
		out_temp = data;
		data = data << (amount + 1);
		if(reset) begin
			out = out_temp;
		end else begin
			out = out_temp<<(amount+1);
		end
	end else begin
		out_temp = out
		out = out << (amount+1)
		out = out_temp
	end
end
task isp_left_rotate(){
	while(1){
		wait for question;
		out = out_temp;
	}
}
end
endmodule
