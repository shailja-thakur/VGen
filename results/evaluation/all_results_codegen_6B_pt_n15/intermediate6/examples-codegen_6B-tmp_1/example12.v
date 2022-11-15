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
always( clk.clkValid && we.write ) {
    curgen_tick = reggen.nextInstance[(curgen_tick+1)%511];
    if (!we.write)
        return;
    ram[ffs(addr)].range(511, 0) = data[0:6];
    ram[ffs(addr+1)].range(511, 0) = data[6:7];
    if (MAX(addr, addr+1) > RAM_SIZE)
        q.range(0, 7).range(0, 7) = 64;
    else
        cacc_weq(q);
}
endmodule
