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
assign q = ~(data[7:0] & we) & (addr[7:0] & we) & (addr[7:0] & ~we) & (addr[7:0] & ~~we);
always @(posedge clk) begin
    addr[7] <we;
    if (we) ram[addr[7:0]] = data[7:0];
end
// when we is low, q is equal to the ram value at address addr
assign q = ~(addr[7] & we) & (addr[7:0] & we) & (addr[7:0] & ~we) & (addr[7:0] & ~~we);
end
"""

from pyOCD.pyocd_protocol import PyOCD
import logging
import random

#: Logging level for this module.
endmodule
