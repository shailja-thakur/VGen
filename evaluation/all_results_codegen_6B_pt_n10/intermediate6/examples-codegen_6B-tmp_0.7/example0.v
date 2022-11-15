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
        ram[addr] = data;
        q <= ram[addr];
    end
end
"""

def test_ram_assign_and_read_64(ram):
    assert ram.read(0x50000) == 0x5f
    assert ram.read(0x50001) == 0x5f
    assert ram.read(0x50002) == 0x6f
    assert ram.read(0x50003) == 0x6f
    assert ram.read(0x50004) == 0x5f
    assert ram.read(0x50005) == 0x6f
    assert ram.read(0x50006) == 0x0f
    assert ram.read(0x50007) == 0x0f
    assert ram.endmodule
