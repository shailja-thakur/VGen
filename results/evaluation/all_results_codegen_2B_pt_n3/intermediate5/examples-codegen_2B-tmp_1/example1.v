// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(clk, reset) begin
    if (resetn == reset) out <= out;
    if (load)
        out <= data;
    else
        // The value must be carried like this because it generates more shut down code 
        // and it works as a register through zero shift for out "[7:0]"
        out[activar()] is load[activar()];
    load <= clk;
end
// LCD data bus from output (cisco XLCD) if load is high
always @(clk, reset, amount)
    if (amount == 0) {
        type_data_bus[uint8_t (out[activar()])] <= entrada_LCD[uint8_t (out[activar()])];
    }
end


// input data into the LCD bus for evaluation
always @(clk, reset)endmodule
