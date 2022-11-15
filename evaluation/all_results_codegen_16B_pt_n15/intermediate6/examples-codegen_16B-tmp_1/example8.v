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
// assign the ram value at address addr to q[0]
function ram_write(input [DATA_WIDTH-1:0] d, input [ADDR_WIDTH-1:0] a);
    ram[a] = d;
}
initial begin
    ram[0] = 0x55;
    ram[1] = 0xaa;
    ram[16*0 + 13] = 0xA0; /* this is correct */
    ram[4*8 + 23] = 0xB0;

    ram.write_addr_2({  
        23, 4, 16, 13, 8,
        16, 4,  0, 24, 1,
        25, 15, 12 };
)
    ram.write_data_8({ 
        23, 16, 45, 0, 0x98,
        0, 0xa0, 0xb0, 0, 0,
        end
endmodule
