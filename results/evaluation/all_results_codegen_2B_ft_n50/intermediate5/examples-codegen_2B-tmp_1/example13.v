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
 if(reset == 1'b0)
 out <= 8'b00000000;
 else if(load == 1'b1)
 out <= data;
 else
 begin
 casex(amount)
 1:out<=out<<1;
 2:out<=out<<2;
 3:out<=out<<3;
 4:out<=out<<4;
 5:out<=out<<5;
 6:out<=out<<6;
 7:
 out <= data;
 endcase
 end
 end
endmodule
