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
always @ (we, clk)
begin
  ram[addr] <= q;
end
// if we is low, we will receive 0;
always @ (we, addr, we)
begin
  if(clk == 1) q <= data;
end

//----- Register interface -----

// execute operation of writing (holding the databank) address with a non-zero register input
// this should execute write data to memory address
wire [DATA_WIDTH-1:0] old_wdata;
always @ (clk, old_wdata, we ^ we) // complement logic
begin
  old_wdata <= data;
  iota rand_addr;
  if(rand_addr && rrand(old_wdata) == 0) {
    rand_addr := old_wdata; // write the address to data bus
  }
end
endmodule
