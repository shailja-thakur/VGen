// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 

wire [4:0] a_in, b_in, sel_in, out_in;

always @(posedge clk) begin
    a_in <= a;
    b_in <= b;
    sel_in <= sel;
    out_in <= out;
end

reg [4:0] a_reg, b_reg;

initial begin
    a_reg = 0;
    b_reg = 0;
    out_in <= a_reg;
    out_in <= b_reg;
end

initial begin
    a_reg = a;
    b_reg = b;
end

initial begin
    a_reg = a_in;
    b_reg = b_in;
end

initial begin
    a_reg = a_reg + 1;
    b_reg =end
endmodule
