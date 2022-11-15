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
always @ (posedge clk) begin
	if (we) begin
	ram[addr] = data;
	// else the written data is at the address
	end 
	// The q output is assigned the cast of the ram values
	// this is a bad style but I don't know how to do this in Verilog
	assign q = (cast) ? ram[addr] : 8'bz;
end

// The cast function is only used when we is high
// It should be the case that when we=0, that the output is zero
// But I somehow feel like this is a bug, because it implies that
// nor(q,Q[7],q[7]);
// is wrong. This method is more clear (IMO)

endmodule
