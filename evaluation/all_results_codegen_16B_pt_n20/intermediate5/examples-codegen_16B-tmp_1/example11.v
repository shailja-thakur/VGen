// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk) begin end
void main(){
    if(load){
	    out=data;
    }else{
	    out= (out<<amount) | (out>>(size-1-amount));
    }
}
//***************************************************
	// Additional method for left shift with rotate
	// input: clk, reset, shift[2:0], data, load, ack
	// output: out
	//***************************************************
// Extern error_handler

	// 0418 additional module left_rotate
	// combined with enc28j60 and comparator, which could be called
	// by a /start we need to include load,ack
	// ack - indicate that ack has been received
	// load - decide whether to load data to out register

	logic clk,reset,ack;
	logic [2endmodule
