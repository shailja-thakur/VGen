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
 if (load) begin
   out<=(data <<(amount-1)) | (data >> amount);
 }
 end else begin
   $display("left_rotate \v [7:0]\n clk=%d   data=%d   load=%d\n amount=%1d  ", clk, data, load, amount);
   out<=rotate(data,(amount-1) & 7);
 end
end;


// smart_bit_field
// smart bit vector that
// 1. shifts inner data bits when a 0 is inserted, and gets rid of the inserted value
// ANDs inner data and inserted value when a 1 is inserted, and does not affect inner data
// 1. we will divide the inner data and the inserted value by 9 and need to decide
// 2. when to ANDendmodule
