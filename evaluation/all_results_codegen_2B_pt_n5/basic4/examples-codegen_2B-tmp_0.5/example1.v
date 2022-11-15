// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.

wire [4:0] a_mux, b_mux;

always @(posedge clk)
begin
    a_mux = a;
    b_mux = b;
    if (sel == 0)
        out = a_mux;
    else
        out = b_mux;
end

wire [4:0] a_in, b_in;

always @(posedge clk)
begin
    a_in = a;
    b_in = b;
    if (sel == 0)
        a_mux = a_in;
    else
        b_mux = b_in;
end

assign a_mux = a_in;
assign b_mux = b_in;

endmodule
