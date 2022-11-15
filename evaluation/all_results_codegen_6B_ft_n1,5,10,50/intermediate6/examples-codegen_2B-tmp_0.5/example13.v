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
always @(we) begin
    if (we) begin
        ram[addr] = data;
    end else begin
        q = ram[addr];
    end
end
// when clk is high, write data to ram at address addr
// assign the ram value at address addr to q
always @(clk) begin
    if (clk) begin
        ram[addr] = data;
    end else begin
        q = ram[addr];
    end
end
// the output q is the ram value at address addr
reg q;

always @(clk,we,addr,data) begin
    if (we) begin
        q = ram[addr];
    end else begin
        q = ram[addr];
    end
end
end

// This is a RAM module
module ram_ref #(
    parameter ADDR_WIDendmodule
