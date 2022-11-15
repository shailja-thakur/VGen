// Design a 64-bit arithmetic shift register, with synchronous load. 
// The shifter can shift both left and right, and by 1 or 8 bit positions, selected by amount.
module advshift(input clk,
input load,
input ena,
input [1:0] amount,
input [63:0] data,
output reg [63:0] q); 
// when load is high, assign data[63:0] to shift register q.
// if ena is high, shift q.
// amount: Chooses which direction and how much to shift.
// 2'b00: shift left by 1 bit.
// 2'b01: shift left by 8 bits.
// 2'b10: shift right by 1 bit.
// 2'b11: shift right by 8 bits.


reg [63:0] q;
reg [1:0] amount;
reg [31:0] data;
reg load;
reg ena;

always @(posedge clk) begin
    if (ena) begin
        if (load) begin
            q <= data;
        end
    end
end

always @(posedge clk) begin
    if (ena) begin
        if (amount[0]) begin
            q <= data[63:0];
        end else begin
            q <= data[63:0];
        end
    end
end

always @(posedge clk) begin
    if (ena) begin
        if (amount[1]) begin
            q <= data[63:0];
        end else begin
            q <= data[63:0];
        end
    end
end

always @(endmodule
