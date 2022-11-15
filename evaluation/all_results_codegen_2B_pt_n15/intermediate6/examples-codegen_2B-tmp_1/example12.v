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
    if (clk == 0) begin
        reg['q'] = 0;
    end
    else if(addr == 0) begin
        ram[0]['q'] = 0;
    end
    else begin
        ram[addr % 2][addr / 2] = data;
        ram[0]['q' + (addr % 2)] = 1;
    end
end
// when we is high, read the data operation in ram at address addr
// then read q to access ram, store operation data
always @ (we, clk, addr)
begin
    if (clk == 0) begin
        data = ram[addr / 2][addr % 2];
    end
    else begin
        reg['q'] = H'1111;
    end
end
);""",
    cpp_contents="""endmodule
