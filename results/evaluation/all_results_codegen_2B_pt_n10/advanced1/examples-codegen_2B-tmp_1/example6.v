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


m(clk, res, inv);

wire ss; 
wire invss;
clk_i = clk;
// += m(xs, p, o, y);
// xout will be forwarded to y if overflow occurs of x
inv_o = inv;
strongly_ordered o(invss, mux24(clk, clk_i, inv, _));
// assigned the case for signal overflow
case overflow: 
    core(a, b, s, ss);
    o(i, y);
    io_o(i, inv);
    io_x(i, ios[x], x);
    core_y(b, a, y); 
endcase
end
*/
endmodule
