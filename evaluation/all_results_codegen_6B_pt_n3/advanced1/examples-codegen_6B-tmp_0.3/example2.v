// Design a signed adder that adds two 8-bit 2's complement numbers, a[7:0] and b[7:0]. 

module signed_adder(input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
); 

// The numbers a and b are added to the output s. 
// assign the occurence of the signed overflow of a and b to the output overflow.
// a signed overflow occurs if the most significant bits of a and b are low and the most significant bit of s is high
// a signed overflow may also occur if the most significant bits of a and b are high and the most significant bit of s is low


// The signed adder is implemented using a carry-carry adder.
// The carry-carry adder is implemented using a carry-carry adder.
// The carry-carry adder is implemented using a carry-carry adder.
// The carry-carry adder is implemented using a carry-carry adder.

always @(posedge clk or negedge rst) begin
    if (rst) begin
        s <= 0;
        overflow <= 0;
    end else begin
        if (a[7:0] > 127) begin
            s <= b[7:0];
            overflow <= 1;
        end else begin
            s <= a[7:0] + b[7:0] + 128;
            overflow <= 0;
        end
    end
end

endmodule
