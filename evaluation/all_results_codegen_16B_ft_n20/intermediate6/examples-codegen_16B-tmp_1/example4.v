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
always @ (negedge clk)
begin
case(we)
1'b0:
begin
q[7:0] = data[7:0];
end
// Write Operation ($display)
1'b1:
begin
ram[addr] = data[7:0];
	$display("Memory[%b]=%b",addr, ram[addr]);
end
endcase
end
assign q[7:0] = ram[addr];
endmodule
