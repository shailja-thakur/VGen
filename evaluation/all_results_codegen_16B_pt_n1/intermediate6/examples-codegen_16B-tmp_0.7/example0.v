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
always @(posedge clk) begin
    if(we)
        q <= ram[addr];
end
""")

    return s


def ram_with_access_dec(addr_width, data_width):
    s = tmpl("ram_with_access_dec", addr_width, data_width)

    s.subckt("ram")
    s.param("ADDR_WIDTH", addr_width)
    s.param("DATA_WIDTH", data_width)

    s.instance("ram", ram_with_access_dec_class(addr_width, data_width))

    return s


def main():
    print(ram_with_access(4, 3))
    print(ram_with_access(4, 4))
    print(ram_with_access(5, 3))
    print(endmodule
