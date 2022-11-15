// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// output <= sum + carry-out
always @(posedge clk) begin
    if ( fetch_idx < 32 ) begin
        #7 <= sum <= Sum(7,15) + CarryOut
        #15 <= cout << CarryOut
    end
    carry_out <= #0
;
end

// Addition. Result <= high order parity of sum.
always @(posedge clk) begin
    #0 <= sum <= Sum(8,0) + CarryOut
    #7 <= sum + CarryOut 
    carry_out <= #0
    carry_out_hd == sum_hl(#0, #7, #0)
end

// Sums. Result <= Sum(0,16) + CarryOut
always @(posedge clk) begin
    #0 <= sum <= Sum(0,16) + CarryOut
    #16end
endmodule
