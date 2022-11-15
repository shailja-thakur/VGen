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
always @ (we | clk) begin
        ram[addr] <= data;
        repeat i range [DATA_WIDTH-1:0] :=
            ENCODE_ONLY( ram[ADDR_WIDTH+i-1:1] );
        end;
end;

// Example
// Print 4 bits - hex code of 0..15
reg [15:0] hex4 =
    ram[0] |
    ram[3]<<8 |
    ram[2]<<16 |
    ram[1] << 24;
reg [16:0] word4 =
    ram[0]<<0 |
    ram[3]<<8 |
    ram[2]<<16 |
    ram[1]<<24;
always @(posedge clk, negedge clk2) begin
        if (we) begin
            qend
endmodule
