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
// assign the ram value at address addr to q */
always @(posedge clk) begin
  if (we) begin
  writedata:
    //#foreach array i in 0 to ADDR_WIDTH-1 #{
    ram[addr[ADDR_WIDTH-1-1:0]] = data[47:48];
    //#}
    #foreach array i in ADDR_WIDTH-2 to ADDR_WIDTH-1 #{
    ram[addr[i:ARRAY(i-1)]] = data[47:48];
    //#}
    //#foreach array i in ADDR_WIDTH to 0 #{
    ram[addr[0:ADDR_WIDTH-1-1-ARRAY(i)]] = data[47:48];
    //#}
  end else begin
    //#foreach array iend
end
endmodule
