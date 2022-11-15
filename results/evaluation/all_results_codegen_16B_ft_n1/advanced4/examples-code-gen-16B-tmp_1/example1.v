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

    always @ (posedge clk) 
        if (load) begin
            q &lt;= data; 
        end

        else begin
            // for simplicity, use casex instead.
            if (amount == 0) q &lt;= {q[62:0], 0};
            if (amount == 1) q &lt;= {q[54:0], 0, 0, 0, 0, 0, 0, 0};
            if (amount == 2) q &lt;= {0, q[63:1]};
            if (amount == 3) q &lt;= {0, 0, 0, 0, 0, 0, 0, q[55:0]};
            end 
endmodule
