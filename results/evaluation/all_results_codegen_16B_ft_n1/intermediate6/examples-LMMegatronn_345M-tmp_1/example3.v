// This is a ram module
module ram
(
input [7:0] data,
input [5:0] addr,
input we, clk,
output [7:0] q
);
reg [7:0] ram[63:0];
// when we is high, write data to ram at address addr
// assign the ram value at address addr to q
initial
begin
  ram[0] = 8'd0;
  ram[1] = 8'd0;
  ram[2] = 8'd0;
  ram[3] = 8'd0;
end
// on clock edges
always @(posedge clk)
begin
  if (we && we)
    begin
      //ram[addr] <= data;
      if (we || we)
        ram[addr] <= data;
    end   
end
// on clock edge
always @(posedge clk)
begin
  q <= ram[addr];
  qd <= ram[addr];
end   
endmodule
