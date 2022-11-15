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
assign q = {ram[addr], ram[addr+1], ram[addr+2], ram[addr+3], ram[addr+4], ram[addr+5], ram[addr+6], ram[addr+7]};
always @(posedge clk)
begin
	if (we)
	begin
	//ram[addr] <= data;
	ram[addr] <= data[DATA_WIDTH-1:0];
	ram[addr+1] <= data[2*DATA_WIDTH-1:DATA_WIDTH];
	ram[addr+2] <= data[3*DATA_WIDTH-1:2*DATA_WIDTH];
	ram[addr+3] <= data[4*DATA_WIDTH-1:3*DATA_WIDTH];
	ram[addr+4] <= data[5*end
end
endmodule
