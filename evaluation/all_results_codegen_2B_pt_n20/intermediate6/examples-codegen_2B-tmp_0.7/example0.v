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
always @(we, clk, we) begin
    if (clk) begin
        ram[addr] = data;
    end
end
// write data to ram at address addr
always @(clk, we) begin
    if (clk) begin
        q[7:0] = ram[addr];
    end
end
// three-state logic to control the RAM interface
reg [DATA_WIDTH-1:0] data;
reg [ADDR_WIDTH-1:0] addr;
reg [DATA_WIDTH-1:0] q;
assign q[7:0] = data;
assign data = ram[addr];
assign addr = (addr + 1) % (2 ** ADDR_WIDTH);
always @(clk) begin
    if (clk) begin
        data[7:end
end
endmodule
