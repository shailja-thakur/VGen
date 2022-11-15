// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 

wire out[4:0] = [_, _, _, _];
// Number of bits to select for each Wire.

reg out_sel;

always @(posedge w1) begin
    reg temp = w1 &'bfl;
    #7 { out_sel <= temp; }
end
reg out_data;

always @(posedge w1) begin
    assign out_data[sel] = a[out_sel]  &'bfl;
    assign out_data[sel-1] = b[out_sel] ^[out_data[2]] &'bfl;
end

endmodule
