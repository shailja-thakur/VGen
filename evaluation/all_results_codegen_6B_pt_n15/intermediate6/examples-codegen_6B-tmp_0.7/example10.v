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
'''

# Warn if we don't have a RAM module
if not HAS_MODULES:
    print('WARNING: No RAM module found')

# We need to know the address width and data width
# In most cases, the data width will be a multiple of the address width
address_width = int(sys.argv[1])
data_width = int(sys.argv[2])

# We need to know the number of RAM modules
num_modules = int(sys.argv[3])

# We need to know the number of RAM modules we're going to add
num_additions = int(sys.argv[4])

# Warn if we didn't get enoughendmodule
