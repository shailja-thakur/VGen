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

    // when load is high, 7'b1000110 gets loaded into the shift register 
    // if load stays high, 1000110 keeps loaded into shift register
    // if load is low and ena stays high no shift happens
    // shift amount depends on amount variable
    // if amount is 01, 1000110 becomes 1000010, but when running simulator, 1000010 does not show 
    // up but 1000110 showed up for 2 consecutive cycle.
    // When seeing stimuli, load starts high then becomes low, ena starts low the became high once, 
    // amount transition too. But shifting is not showing correctly. 
    always@(posedge clk) begin
        if (load) begin
            q[63:0] <= data[63:0];
        end else if(ena) begin
            case(amount)            
                2'b00: q[63:end
end
endmodule
