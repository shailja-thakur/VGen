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
assign q = ram[addr];
start
        // The data is transferred from memory to the register
        if (we && addr [ADDR_WIDTH-1:0] == 0) ram [addr] = data [ADDR_WIDTH-1:0];
        // The data is written to the register of memory
        else if (we && addr [ADDR_WIDTH-1:0] != 0) {
        	// The register is read from memory at the address addr
            if (clk && addr [ADDR_WIDTH-1:0] == 0) q = ram [addr];
            // The register is written to memory at the address addr
            else if (clk && addr [ADDR_WIDTH-1:0] != 0) ram [addr] = q;
        }
end
endmodule
