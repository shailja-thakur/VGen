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
always @ (
    we, clk
) begin
    if (clk > 0) begin
        ram[addr] <= {data, addr};
    end else begin
        q <= {write_not_allow, addr};
    end
end
// when we is low, don't do anything
always @ (we) begin
    ram[addr] <= {read_not_allow, addr};
end


// CP0 register
// Register 0
reg [14:0] cp0;
// CP0 register 1
dword cp0_reg1;
// Table address
dword table_addr;
// Index
dword index;
// Enable
dword enable;

//  instruction tables
//  FIXME
org0
<org0>  
//  instruction tests
always @ (we, clk) begin
    if (we) beginend
end
endmodule
