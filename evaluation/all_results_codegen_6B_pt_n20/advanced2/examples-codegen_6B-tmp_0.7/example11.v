// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
//
// On the negative edge of the clock:
// if the slowen is high, just output the input q.
// Otherwise, output the input q - 1 if q is not zero, otherwise output 0.

#pragma HLS INTERFACE clock port=slowena port=reset port=clk
#pragma HLS INTERFACE axis port=q
#pragma HLS DATAFLOW

reg [3:0] q;

void count_slow_process()
{
    hls_slow_datatype_cell_datatype_cell_datatype_cell_datatype_cell_datatype_cell_datatype_cell_datatype_cell_datatype_cell_datatype_cell_datatype_cell_datatype_cell_datatype_cell_datatype_cell_datatypeendmodule
