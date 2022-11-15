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
// do not initialize the ram values here - they should be assigned in the
// testbench! Otherwise, the simulator will take 15ns to initialize the
// ram, and will throw errors from time to time.
always @(posedge clk)
begin
end
assign q = ram[addr];
endmodule
