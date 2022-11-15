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
always @(posedge clk or we)
    ram[addr] <= ram[addr] << 1 & (we == 1) ? data : q;

reg [ADDR_WIDTH-1:0] ram_adr;
reg [8-1:0]   ram_dat;
// separate input
assign ram_adr = {7{ADDR_WIDTH-1} 1{8-1} {3}};
assign ram_dat = {6{DATA_WIDTH-1} {4}};
// leading zeros
assign q = {8{7}};
// output
assign q = 0;
// local variables
block ram_d2: process(clk, we)
    if rising_edge(we)
    begin
        if write_enable()
        begin
            if access()
            begin
                ramend
end
end
endmodule
