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
// assign the ram value at address addr to q (as though we were
// a cpu)
always @ (we) ram[addr[7:0]][15:0] = q;

// Status of render memory
reg render_status;
// the number of bytes used to represent the ram address
MUX strip_size;
// When set to true, the strip will output data in reverse
wire serial_out_dir;
// Map from strip address to led outputs
wire [127:0] led_mapping;

// Clear status when the data input lines changed (so we don't see old data),
// and have the tested data to q be shot when it changes
always @ (clk or we or we(clk) && data)
    {
    // Common MAXAI subsystem:
    // we are a bitstring of a bunch of bits
    // fetch the highest set bit in data
    // set the common internal qendmodule
