// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
// there will be a one cycle flush delay before out is changed to the next data value
subckt transmit(clk,reset);
wire [4:0] input_reg;
wire [7:0] output_reg;
begin
    // data is loaded from clk/rlatch
    // if it is low then data.next is used for input
    inand_wire ul(clk,reset);
    iff(ul > 0);
    output_reg = ul.o;
else // else if it is high then load is active and inst is used to step up
    load == 1;
    
// var counters for amount and data for set_input()
var data.a = 0, less.a = 0, istep.a = 0;
// var to declare prim_reg
var extra_cntr.a =0, cntr.a=0end
endmodule
