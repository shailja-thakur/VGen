// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always@(posedge clk,reset) begin
if(reset==1) out<=0;
else if(load==1) out<=data;
else begin
case(amount)
3'b000: out<=out << 1;
3'b001: out<=out << 2;
3'b010: out<=out << 4;
3'b011: out<=out << 8;
3'b100: out<=out << 16;
3'b101: out<=out << 32;
3'b110: out<=out << 64;
3'b111: out<=out;
default: out<=out;
endcase
end
end
endmodule
