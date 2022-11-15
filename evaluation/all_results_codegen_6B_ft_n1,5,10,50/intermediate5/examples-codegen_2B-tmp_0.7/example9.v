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
    if (reset) out[0] = 0; 
    else {
      out[0] = load;
      for (int i=0; i<amount; i++) {
        out[0] <<= 1;
        out[0] |= data[0];
      }
    }
endmodule
