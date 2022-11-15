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

// count number of writes
reg [3:0] n_writes;

// control signals
wire [3:0] done;
// a write to the latch clears the done signal
always @(posedge clk)
    if (we)
        done <= 0;
    else
        done <= 1;

// used to indicate that the ram module has finished reading
reg done_reading;
always @(posedge clk)
    if (done)
        done_reading <= 1;
    else
        done_reading <= 0;

// count the number of memory accesses
reg [2:0] n_reads;
always @(posedge clk)
    n_reads <= n_reads + 1;

// the read value at the latch (addr) is passed to the memory module
// the memoryendmodule
