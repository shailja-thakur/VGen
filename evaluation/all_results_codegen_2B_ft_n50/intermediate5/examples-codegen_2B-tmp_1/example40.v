// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits

always @(posedge clk,posedge reset)
begin

out <= (reset | load) ? data:
(amount <= 3'd2) ? (out << 1):
(amount <= 3'd4) ? (out << 2):
(amount <= 3'd8) ? (out << 3):
(amount <= 3'd16) ? (out << 4):
(amount <= 3'd32) ? (out << 5):
(amount <= 3'd64) ? (out << 6):
(amount <= 3'd128) ? (out << 7): 0;
 

end

endmodule
