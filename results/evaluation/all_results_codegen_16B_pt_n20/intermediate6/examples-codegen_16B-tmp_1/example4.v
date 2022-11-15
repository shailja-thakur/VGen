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
    if (we)
        ram[addr] <= data;
    q <= ram[addr];
end

// the value read back by the leader is obtained by prefixing the value of q
// with a 0 bit, with a one on the q lead indice
reg [ADDR_WIDTH-1:0] ram_out;
always @(posedge clk) begin
    ram_out[0:ADDR_WIDTH-1] <= q;
end
endmodule
