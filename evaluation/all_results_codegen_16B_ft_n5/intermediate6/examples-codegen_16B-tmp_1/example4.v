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
// when we is high and we write to an unallocated address,
// the data value is held at the output q, while we continue to
// assign a value to output q by write high operations.

always @ (negedge clk)
begin
	if (we)
	begin
// preserve ram[addr] value for reading out on posedge clk
// since here multiple writes are checked in synchronous therapy.
	end
end


always @ (posedge clk)
begin
	if (we)
	begin
// write the value of data
// onto the address location of address equal to the
// current location of q as given by addr
// and hold addr value as it is and simultaneously
// store the current value of data into its memory at addr
// after it loads the addr value the next store operation
// transfers data to q because of a sequential nature in
//end
end
endmodule
