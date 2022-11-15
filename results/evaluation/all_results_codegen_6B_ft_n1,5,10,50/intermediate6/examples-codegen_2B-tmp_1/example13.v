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
always @(we) clk = we;
always @(clk, input, 26'b000000)
    if (q != 8') ram[addr] = data;
    { data = ram[addr]; memo(ram[addr]); }

    assign q = (data[0] >> 7) & 0x1;  // make sure q is 1 if data[0] is on msb
    assign [WE | CLK] = we;
endmodule
