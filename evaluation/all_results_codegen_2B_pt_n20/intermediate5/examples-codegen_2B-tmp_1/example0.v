// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
subchannel out_regs inout{
    reg [7:0] in;
    reg [0] out;
    reg [0] in;
    reg [0] out;
};

subchannel out_regs_rw{
    reg [7:0] in;
    reg [0] out;
    reg [0] in;
    reg [0] out;
};


subchannel out_regs_rw_pe{
    reg[4:0] out_reg;
    reg [5] out_set;
    reg [6:0] in_reg;
    reg [7] in_set;
};

subchannel out_regs_rw_pe_ro{
    reg [5] out_reg;
    reg [6] out_set;
    reg [4:0] in_reg;
    endmodule
