// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always@(amount,data)
begin
case(amount)
3'b000: out <= data ; // pass data
3'b001: out<={data[2:0],data[5:3]}; // pass a value and shift in one
3'b010: out<={data[3:0],data[6:5]}; // pass a value and shift in two
3'b111: out<={data[4:0],data[7:6]}; // pass a value and shift in four
 default: out <=0; // initalize output to 0
endcase
end
always@(posedge clk or negedge reset)
begin
if(~reset)
out<=0;
else if(load)
out<=data;
end
endmodule
