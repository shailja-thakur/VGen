// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @ (load, out) begin
    if (load == 1) begin
        off = amount;	// the amount of bits we are interested in
        temp = out;	// destination register
        reg out_bit = byte(out[1:0], 7 - off);	// shift the partial contents of out one bit wide whenever off is one less
        temp = ((temp << (7 - off)) | out_bit);	// insert the bits we are interested in into the result
        out <<= amount;	// left shift the output register and copy the results back to out
        out <<= amount;	// left shift the out register and write back the results into out
        reg out_bit = byte(out[0], ~0);	// extract bits to copy the contents of out into an register and also calculate the less significant bits
        // Depending Twitter [0:16]. Sample twitter [17:end
end
endmodule
