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
always @ (we, clk) begin
    q <= ram[addr];
end
while (we) begin
    // write back data to ram at address addr
    ram[addr] <= data;
    // if the ram address address changes
    addr <= addr + (ADDR_WIDTH - 1);
end
reg [DATA_WIDTH-1:0] rdata, tdata;
done [DATA_WIDTH-1:0] tr, td, tor;
reg [DATA_WIDTH-1:0] rcore, tcore, tdor, tenu;
// This is the trash register
reg [DATA_WIDTH-1:0] text, tel, tenu;
reg fdor, reu, tenu;
always @ (we, clk) begin
    tcore[DATA_WIDTH-4:0]end
endmodule
