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
always @ (we or clk) clear ram[BITS(q, DATA_WIDTH-1)+ADDR_WIDTH-1:0]
begin
    memref q (addr)    // Memory read operation
    asm
        // dsb
        // wait
        // dmb // mb
        move_to_ram x (addr),  ram, 1
    end
end
always @ (we or clk) memref q
begin
    store_bq update_q (q) we do memasm clk clk
end
#end

*/
endmodule
