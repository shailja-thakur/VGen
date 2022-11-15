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
// assign the ram value at address addr to q, or force the it to write 0 if there is no change
always @(posedge we) begin
    ram[read ram[addr&0x3f]][addr&0x3f]{data[addr&0x3f] = q;}
    reg q{result[3:0];};
    mfc0 q{cf,we,addr}; // cf and addr are never read

end
end
endmodule
