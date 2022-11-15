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
assign q = (we) ? (ram[addr]) : (8'bzzzz_zzzz);

always @ (posedge clk)
begin
if (we) begin
ram[addr] = data;
// instead of using a combinational always @ addr
// we could also synthesize assign statement 
// as a path delay
end
end

endmodule
