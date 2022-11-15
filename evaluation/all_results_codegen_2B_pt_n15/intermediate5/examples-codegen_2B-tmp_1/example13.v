// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
initial begin
    case data'dup2nd bit [15:15]
        case data'high_p clk [15:15]
            case data bit [15]
                case data_high [15:0] and out [15:0]
                        out = data;
                endcase
            endcase
            case data'high_p clk [7:3] @ [5:5] [4:5] [6:5] [11:7]
                case data bit [7:0]
                    out = data;
                endcase
            endcase
        endcase
    endcase
    select left_reg1_out out;
    reg0 left_reg2;
    // register in clk register clock_phase0U
    // clock_phase0U: clk (clk == top) equiv to 1 and 0 respectively
    // clockendmodule
