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
// assign the ram value at address addr to q.
always @(posedge clk) begin
	// Write only when ram[addr] is 0. Not when addr is 0.
	if (we & (ram[addr] === 8'hzz)) begin
	goverwrite := (addr == ADDR_WIDTH-1)?1:0;
	ram[addr] <= data;
	ram[ADDR_WIDTH-1:0] <= {(ADDR_WIDTH-1){goverwrite}};
	end
end
assign q[0] = (clk)?24'hzz:ram[0];
assign q[1] = (clk)?24'hzz:ram[1];
assign q[2] = (clk)?24'hzz:ram[2];
assign q[3] = (clk)?24'hzz:ram[3];endmodule
