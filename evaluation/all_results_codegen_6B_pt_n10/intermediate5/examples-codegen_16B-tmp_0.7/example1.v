// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// left shift and rotate the register out by amount bits
always @ (posedge clk or posedge reset)
begin
if (reset)
out <= 0;
else if (load) 
out <= data;
else begin
case(amount)
3'b000: out <= 8'h00;
3'b001: out <= 8'h01;
3'b010: out <= 8'h02;
3'b011: out <= 8'h04;
3'b100: out <= 8'h08;
3'b101: out <= 8'h10;
3'b110: out <= 8'h20;
3'b111: out <= 8'h40;
default: out <= 8'h00;
endcase
end
end
endmodule
