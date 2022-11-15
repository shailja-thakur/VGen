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
if (we) begin
    if (addr == 0) begin
        q <= ram[0];
    end else begin
        ram[addr] <= data;
        q <= ram[addr];
    end
end else begin
    q <= ram[addr];
end

// This is a reg module
reg [7:0] a;
reg [7:0] b;
reg [7:0] c;
module logic [7:0] d;
// This is a RAM module
module ram2 #(
    parameter ADDR_WIDTH=6,
    parameter DATA_WIDTH=8
) (
    input [DATA_WIDTH-1:0] data,
    input [ADDR_WIDTH-1:0] addr,
    input we, clk,
    output [7:0] q
);
endmodule
