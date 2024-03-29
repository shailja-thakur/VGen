// Build a 64-bit arithmetic shift register, with synchronous load. 
// The shifter can shift both left and right, and by 1 or 8 bit positions, selected by amount. 
// load: Loads shift register with data[63:0] instead of shifting.
// ena: Chooses whether to shift.
// amount: Chooses which direction and how much to shift.
    // 2'b00: shift left by 1 bit.
    // 2'b01: shift left by 8 bits.
    // 2'b10: shift right by 1 bit.
    // 2'b11: shift right by 8 bits.
// q: The contents of the shifter.

module advshift(input clk,
    input load,
    input ena,
    input [1:0] amount,
    input [63:0] data,
    output reg [63:0] q); 

    always @(posedge clk) begin
    
        if (load) begin
            q<=data;
        end
        else if (ena) begin
            case (amount)
            0: q <= {q[62:0],1'b0};
            1: q <= {q[55:0],8'b0};
            2: q <= {1'b0,q[63:1]};
            3: q <= {8'b0,q[63:8]};
            endcase
        end

    end

endmodule