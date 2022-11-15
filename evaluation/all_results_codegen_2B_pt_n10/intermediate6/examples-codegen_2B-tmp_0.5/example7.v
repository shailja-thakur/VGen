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
always @ (we, clk)
begin
    if (clk == 1) begin
        ram[addr] <= data;
    end
end
// when we is low, read data from ram at address addr
// assign the ram value at address addr to q
always @ (we, clk)
begin
    if (clk == 0) begin
        q <= ram[addr];
    end
end
end
end
""")

def generate_test_case(ram_size):
    test_case = TestCase(
        name='ram_test_%d' % ram_size,
        memory_map=(
            ('ram', ram_size*['ram', 2**ram_size]),
            ('ram_config', ram_size*['ram_config', 1])
        ),
        regions=(
            ('ram_config', ram_size*endmodule
