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
always @(posedge clk)
    if (we) ram[addr] <= data;
    q <= ram[addr];

// Correctly instantiate a RAM model
ram_inst: ram address_width=6, data_width=8 > PORT("CLK", clk);

initial begin
    ram[0] :== $10;
    ram[1] :== $C2;
    ram[2] :== $11;
    ram[3] :== $D4;
    ram[4] :== $00;
    ram[5] :== $10;
    ram[6] :== $C2;
    ram[7] :== $11;
end
endmodule
