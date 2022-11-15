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
        if (addr == 0) q <= ram[0];
        else if (addr == 1) q <= ram[1];
        else if (addr == 2) q <= ram[2];
        else if (addr == 3) q <= ram[3];
        else if (addr == 4) q <= ram[4];
        else if (addr == 5) q <= ram[5];
        else if (addr == 6) q <= ram[6];
        else if (addr == 7) q <= ram[7];
    end
end
endmodule
