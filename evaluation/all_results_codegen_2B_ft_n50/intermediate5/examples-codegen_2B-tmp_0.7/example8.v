// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk) begin
if(reset) 
out <= 0;
else if(load)
out <= data;
else begin
case(amount)
3'd0 :out <= {data[1],data[0],data[3],data[2],data[5],data[4],data[7],data[6],data[8],data[9],data[11],data[10],data[13],data[12],data[15],data[14],data[17],data[16],data[19],data[18],data[21],data[20],data[23],data[22],data[25],data[24],data[27],data[26],data[29],data[28],data[31],data[30]};
3'd1 :out <= {data[2],data[1],data[0],data[3],end
end
endmodule
