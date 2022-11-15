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
    if (clk == 0)
        q <= 0;
    else
        ram <= {data[ADDR_WIDTH-1:0], data[ADDR_WIDTH-2:0]};
end
// when we is low, the data write to our ram is ignored
always @ (we, clk, addr)
begin
    if (clk == 0) {
        addr <= 0;
        data <= 0;
    }
end
end
end
'''

#-------------------------------------------------------------------
# To run the example, see the README.md file for example usage
#-------------------------------------------------------------------
if __name__ == '__main__':
  print(example1())
endmodule
