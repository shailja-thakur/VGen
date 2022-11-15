// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(negedge clk,posedge clk,negedge reset)
begin:
        if (out != load) {
                out <<= amount;
                out = data << amount;
                out = out;
                out = amount - 1;
                out <<= amount;
        }
        end;
end
//

// need load and amount - see left_rotate definition

module left_extend(clk,reset,amount,data,in_data,in_load,out_data,out_load);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input in_data;
output [7:0] out_data;
output in_load;

always @(negedge clk,negedge reset)
begin:
        if (out_load)endmodule
