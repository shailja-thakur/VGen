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
wire WRITE1 [DATA_WIDTH-1:0];
assign WRITE1    = ((data[2015:0] & (1'b1 ^ we)[2015:0] & ~addr[2015:0] & (1'b0 ^ clk)[2015:0])
                    | (~we)[2015:0] * clk
                 );
// when we is low, read data into data register using ram at address addr
assign [DATA_WIDTH-1:0] data  =  ((~clk)[2015:0] * clk
                                 |  (clk)[2015:0] * clk
                                 |  dest
                                 |  WRITE1
                               );
// always assign a value to  ram[addr] so the value at address addr is always consistent
assign ram[2015:0]  =  ((~clk)[2015:endmodule
