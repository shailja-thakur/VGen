// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk or posedge reset) begin
   if (reset) begin
      out <= 0;
   end else begin
      out <= (load) ? {data,0} :
         (data << amount) | (out >> (8-amount));
   end
end


// right rotate and left shift operation
module right_shift_rotate(clk,reset,amount,data,load,out);
input clk, reset, load;
input [2:0] amount;
input free;
input data;
input [7:0] load;
output reg [1:0] out;
always @(posedge clk or posedge reset) begin
   if (reset) begin
      out <= 0;
   end else begin
      out <= (load & free) | ((amount) ? data : out >> (32-amount));
   endend
endmodule
