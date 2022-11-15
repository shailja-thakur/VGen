// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk or posedge reset)
 if (load) begin
	out <= data;
 end
else begin
	begin
	out[2:0] <= out[5:3];
	out[5:3] <= out[6:2];
	out[6:2] <= out[7:1];
	out[7:1] <= load ? data[0] : out[2:0];
	end
end
 endmodulemodule dff(D,Q,d,c);
 input d;
 input c;
 output Q;
 output D;
 reg Q;
 reg D;
 always @(posedge c) begin // synchronous set
	D = d;
	Q = d;
 end
initial // change the initial statement to initial depending on mux your are using
begin //**Initialization**
	D=1'bendmodule
