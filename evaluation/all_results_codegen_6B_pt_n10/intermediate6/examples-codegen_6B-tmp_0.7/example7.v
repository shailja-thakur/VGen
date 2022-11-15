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

// top-level signal names
// A RAM module is a block of N-byte RAM connected to a data bus
// with N-byte wide data bus and M-byte wide address bus
// where N is the parameter ADDR_WIDTH and M is the parameter
// DATA_WIDTH.
// A RAM module is a block of N-byte RAM connected to a data bus
// with N-byte wide data bus and M-byte wide address bus
// where N is the parameter ADDR_WIDTH and M is the parameter
// DATA_WIDTH.
// The ram module is connected to the output of the RAM
// block. The ram module output is connected to the output of
// the RAM block.endmodule
