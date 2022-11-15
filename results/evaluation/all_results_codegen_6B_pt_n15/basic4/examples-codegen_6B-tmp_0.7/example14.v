// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
always @(posedge clk or negedge rst) begin
    if(rst) begin
    end
    else begin
        out[0] <= a[sel];
        out[1] <= b[sel];
    end
end

// Initialize the multiplexer to 0.
always @(posedge clk or negedge rst) begin
    if(rst) begin
    end
    else begin
        sel <= 0;
    end
end


endmodule
