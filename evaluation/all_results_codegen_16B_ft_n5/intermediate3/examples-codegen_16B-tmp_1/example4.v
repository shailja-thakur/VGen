// Design a 5-bit maximal-length Galois LFSR with taps at bit positions 5 and 3
module lfsr( 
    input clk,
    input reset,
    output [4:0] q
); 
reg [4:0] r_reg;
wire [4:0] r_next;
wire feedback_value;
// on reset set the value of r_reg to 1
// otherwise assign r_next to r_reg
// assign the xor of bit positions 2 and 4 of r_reg to feedback_value
// assign feedback concatenated with 4 most significant bits of r_reg to r_next
// assign r_reg to the output q
always @(reset or clk) begin
	if(reset) begin
	r_reg = 5'b00011;
	end
	else begin
	r_reg = r_next;
	end
end 
assign q = r_reg;
// To execute the DXL code below, you need to copy and paste the feedback and taps arrays (declared at the top of the lfsr file)
// below into gadgets 3.2. To compile and download, do: make followed by: make ODTN27Q64D1
decaf_gcc_multiboot_modified_jpeg_decode
`ifdef MULTICORE_GEMINIHP
`else
//laptops need a little more core, satellites a lot less
//`define MULTICORE_GEMINIHP
`endif
wire clk_out;
wire LVendmodule
