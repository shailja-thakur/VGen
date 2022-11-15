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
// when clk is low or when we is low
initial begin
    if (we && !clk)
        ram[addr] = data;
end


wire U[DATA_WIDTH-ADDR_WIDTH-1:ADDR_WIDTH-1];
// u why was the extra "i" in the output line
initial begin
    U[ADDR] = ~addr + 8;
    U[DATA] = data & 0b1111111;
end
end
endmodule
