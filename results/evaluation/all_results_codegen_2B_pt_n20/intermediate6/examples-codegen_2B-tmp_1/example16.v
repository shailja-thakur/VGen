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
wire [DATA_WIDTH-1:0] value;

ram_inc();

initial
wire hold [DATA_WIDTH-1:0];
initial hold[3] = {0,0,0};

assign ram[8] = {
  work, hold, 0,0, 0,0,0,0
};

// when the counter reaches latch_addr then
// initialize from ram[latch_addr] to ram[latch_addr+ADDR_WIDTH]
initial
#64 addr = 0;
reg [DATA_WIDTH-1:1024] d;
initial d = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
initial d[1024:0] = {0,0,0,0,0,0endmodule
