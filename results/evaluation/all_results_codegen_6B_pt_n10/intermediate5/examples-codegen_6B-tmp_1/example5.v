// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(always_comb)
begin
    if(load)
    {
        out = data;
    }
    else
    {
        out = (out << amount) | (out >> (32 - amount));
    }
end

// -------------------------------------


// ###########################################
// Core core instance
// ###########################################
begin core
    design (edge, 0 to 5) core_inst (clock, reset, write, data, load, out, #(58));
endcore
design ccore_inst (clock, reset, write, data, load, out, #(58));

// -------------------------------------

// ##########################################
// Decimator instance
// ##########################################
begin decimator
    design 0 decimator_inst (clock, reset, write, data, load, out, #(58));
    design 1 decimatorend
endmodule
