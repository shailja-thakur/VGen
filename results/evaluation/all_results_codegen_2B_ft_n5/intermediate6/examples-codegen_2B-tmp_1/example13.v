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
always @(we) ram[addr[15:0]] = q;  				    # location 15:0
always @(we) ram[addr[31:16]] =  q;             	    # location 31:16
always @(clk) reset_memram(ram);
always @(clk) blocking (clear_memory(data) && write_memory(data, addr));
10 clk cycle enable_memram  		    # only when clk high.

// this instruction is illegal because Data width is not rounded to wordsize
16 clk cycle write_memory1  

// This is a structure with >64 bits. The HW is stricter, this may fail.
reg [DATA_WIDTH-1:0] data			# 64 bit struct with 1 word
reg [6:0] addr				# address of data is a reg [0,63]
regendmodule
