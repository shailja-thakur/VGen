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
  if (load)
  {
    out=data;
    load=0;
  }
  else
  {
    out=(out >> amount) | (out << (32-amount));
    out=out << amount;
  }
end
end
""")

s = simulator.Simulator()
s.reset(0)

a = 0
b = 0
for i in range(4):
    a = i
    s.expect(a)
    b = i
    s.expect(b)
    s.run(3)
    assert s.state.registers[a] == 1
    assert s.state.registers[b] == 1
    assert s.state.registers[2] == 2
    assert s.state.registers[3endmodule
