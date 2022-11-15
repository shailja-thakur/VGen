// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits

always #(1) begin: load_out
    if (load) begin
        out = data;
    end else begin
        out = (data << amount) | (out >> (8-amount));
    end
end

always #(1) begin: load_data
    if (load) begin
        data = out;
    end else begin
        out = (out << amount) | (data >> (8-amount));
    end
end

always #(1) begin: load_shift
    if (load) begin
        out = out << amount;
    end else begin
        out = out >> amount;
    end
end

always #(1) begin: load_rotate
    if (load) begin
        out = out << amount;
    end else begin
        out = out >> amount;
    end
end

always #endmodule
