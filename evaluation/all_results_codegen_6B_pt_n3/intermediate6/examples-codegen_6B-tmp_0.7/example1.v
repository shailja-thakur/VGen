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
always @(posedge clk or negedge we) begin
    if (we) begin
        ram[addr] <= data;
        q <= ram[addr];
    end
end
`

func TestSimulation(t *testing.T) {
	inputs := []bool{true, true, false, true, true, false, true, true}
	inputs = append(inputs, inputs...)
	inputs = append(inputs, inputs...)
	inputs = append(inputs, inputs...)
	inputs = append(inputs, inputs...)
	inputs = append(inputs, inputs...)

	outputs := []uint64{0x01000000, 0x101fffff, 0x01000000, 0xffffffff, 0x01000001, 0xffffffff, 0x01000002, 0xffffffff}
	outputendmodule
