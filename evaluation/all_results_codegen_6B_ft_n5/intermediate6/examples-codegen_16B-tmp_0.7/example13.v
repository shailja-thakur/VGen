// This is a RAM module
module ram #(
    parameter ADDR_WIDTH=6,
    parameter DATA_WIDTH=8
) (
    input [DATA_WIDTH-1:0] data,
    input [ADDR_WIDTH-1:0] addr,
    input we, clk,
    output [7:0] q
);
reg [DATA_WIDTH-1:0] ram[2**ADDR_WIDTH-1:0];
// when we is high, write data to ram at address addr
// assign the ram value at address addr to q
// all clock and data signals are active high
// when we is true, write to the ram
assign q = ram[addr];
always @(posedge clk) begin
	if (we)
	begin
	ram[addr] = data;
	end
end
endmodule
