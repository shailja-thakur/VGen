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
assign ram[MAX+(MAX-MAX)<0?0:(MAX-MAX)] = we;
// write to address addr
assign q[ADDR_WIDTH-1:0] addr;
// something had been written
assign q[1] = clk;
// 1
assign ram[addr[DATA_WIDTH-1:0]] = q[ADDR_WIDTH-1:0];
// 2
assign q[1] = !we;
// 6
assign q[1] = clk;
// 7
endmodule
