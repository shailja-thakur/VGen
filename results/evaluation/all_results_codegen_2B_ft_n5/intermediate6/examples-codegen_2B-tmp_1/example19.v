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
reg write_instr;
// when we is low, wait on adr ack
reg read_instr;
// adr ack
reg adr_ack;
// counter when we reads this, waiting for 0
reg replay_cnt;
// Rohm sram1481 controller
//hex2uint8(0x03,0x01);


assign write_instr = 1'b1;
assign read_instr = 1'b1;
assign adr_ack = 1'b0;

#18m@0 useb #1
#32m@2 useb #2

always @(*)
begin
    //read data from ram at address addr
    read_instr = (ram[addr] >> 2) & 0x3in;
    q = ram[addr] << 3;
end

always @(endmodule
