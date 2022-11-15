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
always @(posedge clk)
    if (we)
        ram[addr] = data;
end

// ram_read: ram read port
module ram_read #(
    parameter ADDR_WIDTH=6,
    parameter DATA_WIDTH=8
) (
    input [ADDR_WIDTH-1:0] addr,
    output [DATA_WIDTH-1:0] data
);
reg [DATA_WIDTH-1:0] ram_read[2**ADDR_WIDTH-1:0];
always @(posedge clk)
    ram_read[addr] = ram[addr];
end

// ram_write: ram write port
module ram_write #(
    parameter ADDR_WIDTH=6,
    parameter DATA_WIDTH=8
endmodule
