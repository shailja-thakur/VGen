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
        if (addr == 0) q <= data; // addr = 0
        else if (addr == 1) q <= ram[0]; // addr = 1
        else if (addr == 2) q <= ram[1]; // addr = 2
    end
end

// main module
// we don't care about frequency of "less than 2 ns"
logic [31:0] bus0, bus1, bus2, bus3;
assign bus0 = ram[2]; // load to address 2
assign bus1 = ram[1]; // load to address 1
assign bus2 = ram[0]; // load to address 0
always @(posedge clk) begin
    if (addr > 0) bus3 <= ram[addr-1]; // address has 0, 1, or 2 lsbs
end
endmodule
