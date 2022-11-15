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
// assign the ram value at address addr to q whenrieving it
// otherwise assign 0
assign q[ADDR_WIDTH-1:0] = ( (we == 1'b1) && (addr == ADDR_WIDTH) ) ? data : 8'b0;
always @(posedge clk) begin
 if(we)
 ram[addr] <= data;
end
endmodule
