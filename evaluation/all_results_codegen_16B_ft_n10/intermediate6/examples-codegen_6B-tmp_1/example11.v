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
assign ram = {.dc = input[0][31] & input[0],
              idx = addr[3] and 0b111011,
              data = {q = 0,....................,q = 0,
                          q = ram_datawire(idx, ADDR_WIDTH-1),
                          q = ram_datawire(idx, DATA_WIDTH-1),
                          q = data[7:0],
                          q = 0,....................,q = 0,
                          q = ram_datawire(idx, ADDR_WIDTH-1),
                          q = ram_datawire(idx, DATA_WIDTH-1),
                          q = ram[513][DATA_WIDTH-1:0]
                      },
              d_sel = input[0][23],
              we_selendmodule
