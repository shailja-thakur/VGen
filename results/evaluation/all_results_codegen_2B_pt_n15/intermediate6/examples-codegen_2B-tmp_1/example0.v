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
always @(clk,we) begin
    if (we) begin
        if (addr == ma_sh1_mem[1+mb].val) ram[ma_sh1_mem[3+ma]].val = data
    end
    else q2 = mem[ram[addr].val | ~(1 << (DATA_WIDTH-1))];
end
// Detect a software reset
wire [DATA_WIDTH-1:0] rst = rst_sh1_mem[1:0];
assign s0 = s0_sh1_mem[on_sh1_mem_data_comp];
// Writing 1 to s0.we sets a software reset
assign [wa8,wa9,wa10,wa11,wa12,wa13,wa14,wa15] outputs = [cast(rst[7:0] >> 1endmodule
