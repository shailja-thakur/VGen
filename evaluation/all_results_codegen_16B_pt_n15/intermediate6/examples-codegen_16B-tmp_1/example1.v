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
always @* begin
  // (we && addr) is true if we has triggered, addr is valid
  if (!we) begin
    *q <= 0;
  end
  else if (addr == 0) begin
    *q <= data;
  end
  else begin
    // The state where the read bit is set is implementation-specific. Instead of examining that
    // bit in every transaction, we make dedicated read cycles that also write the value read
    // into *q.
    if (addr == (2**ADDR_WIDTH-1)) begin
      // Read cycle
      *q <= ram[addr];
      ram[addr] <= std_logic_vector(to_unsigned(data,DATA_WIDTH));
    end else begin
      // Normal write cycle
      ram[addr] <= std_logic_vector(to_unsigned(data,end
end
end
endmodule
