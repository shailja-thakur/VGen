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
always @(posedge clk) begin
    if (we) begin
        if (addr == 0)
            ram[0] <= data;
        else
        if (addr == 1)
            ram[1] <= data;
        else
        if (addr == 2)
            ram[2] <= data;
        else
        if (addr == 3)
            ram[3] <= data;
        else
        if (addr == 4)
            ram[4] <= data;
        else
        if (addr == 5)
            ram[5] <= data;
        else
        if (addr == 6)
            ram[6] <= data;
        else
        if (addr == 7)
            ram[7] <= data;
    end
    q <= ram[addr];
end
endmodule
