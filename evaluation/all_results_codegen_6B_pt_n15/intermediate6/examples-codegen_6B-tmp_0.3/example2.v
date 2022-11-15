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
        q <= ram[addr];
    end
end
`

func TestRam(t *testing.T) {
	assert := assert.New(t)
	// Make sure we are using the correct RAM model
	ram, err := NewRAM("ram", ram_def)
	assert.Nil(err)
	assert.Equal(ram.RAMModel, "ram")
	assert.Equal(ram.DataWidth, 8)
	assert.Equal(ram.AddrWidth, 6)
	// Make sure we can get the RAM address
	addr := ram.Addr()
	assert.Equal(addr, 0)
	// Make sure we can set the RAM address
	ram.Addr(1)
	assert.Eendmodule
