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
// assign the ram value at address addr to q, and export the symbol
initial inline begin
    CAssistant.high_to_low(ram[addr]);
    CAssistant.low_to_high(ram[addr]);
    q = ram[addr];
end
// reset address to zero
initial begin
    CAssistant.low_to_high(ram[0]);
end
endmodule
