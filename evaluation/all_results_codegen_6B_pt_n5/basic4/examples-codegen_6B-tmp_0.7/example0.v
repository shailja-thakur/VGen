// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
always@(posedge clk or negedge rst) begin
    if (rst) begin
        out <= 0x0;
    end else begin
        out <= sel ? a : b;
    end
end

module mux2( 
input [4:0] a, b,
input sel1, sel2,
output [4:0] out );
// When sel1=0, sel2=1, assign a to out.
// When sel1=1, sel2=0, assign b to out.
always@(posedge clk or negedge rst) begin
    if (rst) begin
        out <= 0x0;
    end else begin
        out <= sel1 ? a : b;
    end
end

module mux3( 
input [4:0]endmodule
