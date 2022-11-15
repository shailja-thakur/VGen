// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @ (clk, reset)
begin
    if load == 1'b0 then begin
        // load the data into the out register
        out <= data;
    end else begin
        // rotate the data by amount bits and then shift the out register by amount bits
        out <= left_rotate_shift(data, amount);
    end
end

always @(clk,reset)
begin
    if (reset == 1) begin
        amount <= 0;
        out <= 0;
    end else begin
        if (clk == 1) begin
            // invert the result if the input is a negative number
            if (amount == 0) out <= amount;
            else out <= amount;
        end
    end
end

always @(clk,reset)
begin
    if (reset == 1) begin
        amount <= 0;
        out <=end
end
endmodule
