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
always @(posedge clk or posedge reset) begin
    if (reset) begin
        ram[0] <= 0;
    end else if (we) begin
        if (addr[ADDR_WIDTH-1] == 0 && addr[ADDR_WIDTH-2] == 0)
            ram[addr[0]] <= data;
    end
end

// read data from ram at address addr
// assign the value of q to data
always @(posedge clk or posedge reset) begin
    if (reset) begin
        data <= 0;
    end else if (we) begin
        if (addr[ADDR_WIDTH-1] == 0 && addr[ADDR_WIDTH-2] == 0)
            data <= ram[addr[0]];
    end
end
endmodule
