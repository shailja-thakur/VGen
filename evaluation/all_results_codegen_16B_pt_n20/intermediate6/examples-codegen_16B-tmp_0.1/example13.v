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
        if (addr == 0) begin
            ram[0] <= data;
        end else begin
            ram[addr] <= data;
        end
    end
end
// return the value stored at address addr
// this is a register
reg [DATA_WIDTH-1:0] get_ram;
always @(posedge clk) begin
    get_ram <= ram[addr];
end
// write the value stored in get_ram to address addr
// this is a register
reg [DATA_WIDTH-1:0] put_ram;
always @(posedge clk) begin
    if (addr == 0) begin
        ram[0] <= put_ram;
    end else begin
        ram[addr] <= put_ram;
    end
end
endendmodule
