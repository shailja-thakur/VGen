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
assign q = ram[addr];
//always @ (posedge clk)
always @ (posedge clk)
assign if (we && addr!=0 && addr!=31) begin
ram[addr] <= data;
//data_tag_ram[8*(addr)-1:8*(addr-1)] <= data;
//ram_array[8*(addr)-1:8*(addr-1)] <= data;
end
//INFO(SJMH): IF iROLL UP THE BUS FOR THE TAG IN THE MIDDLE OF 32BITS OF HEX


generate
genvar i;
for (i=0; i<(2**ADDR_WIDTH); i=i+1)begin:ram_assign
 assign ram[i] = ram_array[i+:DATA_WIDTH];
 end
endgenerateendmodule
