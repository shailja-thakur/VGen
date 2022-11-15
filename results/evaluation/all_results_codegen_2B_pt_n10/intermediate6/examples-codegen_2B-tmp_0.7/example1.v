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
wire we;
// clk is high when the next read/write cycle occurs
wire clk;
// q is the output data written to ram
wire [7:0] q;
// ram is a read only memory module, so we
// must provide the output
reg ram_o;
initial begin
    we = 0; clk = 1;
    ram_o = 0;
    q = 0;
end
// input is a plain input, so we can directly
// process the data
reg input_o;
initial begin
    input_o = 0;
end
initial begin
    // initialize ram to 0
    ram[0] = 0;
    ram[1] = 0;
    // initialize the output to whatever is written to ram
    ram_o = ram[addr];
    // initialize the input to whatever is read from ram
    input_o =end
endmodule
