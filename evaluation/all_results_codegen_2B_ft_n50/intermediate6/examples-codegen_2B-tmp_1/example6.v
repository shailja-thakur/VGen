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
assign q=ram[addr];
// combinational logic : when we input, we are writing, so flag 1
assign q[ADDR_WIDTH]=0;
// when we is high, flag 1 is selected
always @(posedge clk) 
// valid computing : 
// if ( we write at address > window bound ) 
// when ( addr + 1 ) == window bound 
if (addr<(2**ADDR_WIDTH-1))
 if((addr+1)==(2**ADDR_WIDTH-1)) begin: no_more_writes
 end
// we, swithcing, store value in ram when reading
always @(posedge clk) if(we) begin
 ram[addr]<=data;
 end
endmodule
