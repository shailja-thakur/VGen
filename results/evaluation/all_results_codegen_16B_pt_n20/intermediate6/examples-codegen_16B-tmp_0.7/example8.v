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
always @(posedge clk or posedge we) begin
    if (we) begin
        case(addr)
            2'b00: ram[addr] <= data;
            2'b01: ram[addr] <= data;
            2'b10: ram[addr] <= data;
            2'b11: ram[addr] <= data;
        endcase
    end
end
endmodule
