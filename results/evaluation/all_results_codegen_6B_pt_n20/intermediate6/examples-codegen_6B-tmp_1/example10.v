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
reg write_ram_request;
always @ (we && clk) begin
    if (add(int_to_bits(addr,ADDR_WIDTH), int_to_bits(data,DATA_WIDTH))) begin
        // ram[addr] <= 1, q'dir adria has changed from before
        ram[addr] <= 1'b1 & q;
        if (ram[addr] && not write_ram_request) begin
            // incr addr counter
            data_write[7:0] := data; // fill operation register
            data_write[ADDR_WIDTH:ADDR_WIDTH-1] := int_to_hl(addr); // compute address
        end
        // incr addr counter
        data_write[7:0] := data; // fill operation register
        data_write[ADDR_WIDend
end
endmodule
