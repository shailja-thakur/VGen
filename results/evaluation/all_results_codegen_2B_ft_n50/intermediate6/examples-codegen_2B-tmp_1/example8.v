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
// when we is high, fwe=1
// when we is high, addr is matched with data field, normally there is a delay of one clock cycle before fwe is asserted
// when we is high, and there is a delay of one clock cycle before data is given to fwe,
// with matching address and data fields, there is a 2-cycle delay
assign q = (we && !fwe) ? pin : 8'bzzzzzzzz;
always @(posedge clk) begin
if(we) begin
ram[addr] <= data;
end 
if (fwe) begin
if((addr==data) && !we) begin
q <= pin;
end
else begin
q <= q;
end
end
end
endmodule
