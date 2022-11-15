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
always @(posedge clk)
    if(we)
        ram[addr] <= data;
    else
        q <= ram[addr];
// assign the result q to address
// chanage the MAX value of width to 6
assign addr[31:0] = {6'd0, 0'd1, 0'd0, 0'd1};




"""


#open the output terminal for the user, if no command line argument was passed
if len (sys.argv) < 2:
    term = raw_input ('Select a terminal, $ for std :  ')
else:
    term = sys.argv[1]

#module searching loop
print "\nTrying all modules on bus now..."
bus = hdl_io.bus()
for module in enum ('w7i', 'i2c', 'iobrig', 'uart'):endmodule
