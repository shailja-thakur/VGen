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
always@(posedge clk) begin
    if (we) begin
	ramadd(add(addr[15:0], ramaddr)).q <= data;
    end
end

// make sure to start with an empty RAM
ram.addr <= $d0;
ram.data <= $d0; // set an invalid data

`+haa.Snowflake((0xDFFF<<16)-1)+`

  )

  #(
  parameter ADDR_WIDTH=2,
  parameter DATA_WIDTH=4
);
  reg [DATA_WIDTH-1:0] ram [2**ADDR_WIDTH-1:0]; // fill this one with RAM
  parameter P;
  parameter H=2;

  reg [6:0] ramaddr; // keep a pointer to this one, otherwise weendmodule
