// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk or negedge reset)
  if (load) out <= data;
  else if (amount > 0) {
        reg2 out2 = out << amount;
        out = in8(&little_load) & out2;
}else{
        reg2 out2 = out << (unsigned long) -amount;
        out <<= out2;
}
`
endmodule
