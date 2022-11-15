// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk or negedge reset) begin
  if(load) out = data;
  else begin
    out = out << amount & 0x7f;
    out = out >> amount;
  end
end

module ram(clk,reset,addr,d,load,write,out,in);
  reg [7:0] out;
  reg [7:0] in;
  reg [7:0] addr;
  reg d;
  reg [2:0] write;
  always @(posedge clk or negedge reset) begin
    if(load) out = d;
    else begin
      out = in;
      write = write;
    end
  end
end

module ram_in(clk,reset,addr,d,load,write,out,in);
  reg [7endmodule
