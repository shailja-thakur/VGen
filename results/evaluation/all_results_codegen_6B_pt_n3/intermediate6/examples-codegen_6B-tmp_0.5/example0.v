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
always @(posedge clk) begin
    if (we) begin
        ram[addr] <= data;
    end
    if (we) begin
        q <= ram[addr];
    end
end
`

func TestRam(t *testing.T) {
	ram := NewRam(8, 8)
	ram.AddrData.Set(0, 0x00)
	ram.AddrData.Set(1, 0x01)
	ram.AddrData.Set(2, 0x02)
	ram.AddrData.Set(3, 0x03)
	ram.AddrData.Set(4, 0x04)
	ram.AddrData.Set(5, 0x05)
	ram.AddrData.Set(6, 0x06)
	ram.AddrData.Set(7, 0endmodule
