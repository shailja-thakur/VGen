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

always_comb assign clk = addr[ADDR_WIDTH-1] && we;

test regsw logic [DATA_WIDTH-1:0] ram_get, address, value;
always_comb begin fail if RAM_TEST_MODE != 0
    assign ram_get = ram[ram_get_address];
    //             data[7:0] = ram_get[7:0]
    assign value = ram_get;
    //             value[7:0] = ram_get[7:0]
end


// for testing both cases of RAM
always_comb begin
    case RAM_TEST_MODE
    case 1// for read, address_set is ignored by ram_read for both ranges
    case 2// for check
        ram_dummy=ram_dummy_end
endmodule
