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

    always @(posedge clk or negedge rst) begin
        state0 <= a[7:0];
        state1 <= b[7:0];


        state0 <= state0 + state1;

        s <= state0;

        if (rst) begin
            state0 <= 0;
            state1 <= 0;
            state0 <= cnt0; // start wins
            state1 <= cnt1; 
            cnt0 <= cnt0 + 1;
            cnt1 <= cnt1 + 1;
            //((state0 > s) or (state1 > s) or (state0 == state1) or (state1 == cnt1)) begin // only occurs where language is with 1
            overflow <= 0; //generated as part of Generator

            case cnt0:
                state0 <= cnt0 - 1;
                end
end
endmodule
