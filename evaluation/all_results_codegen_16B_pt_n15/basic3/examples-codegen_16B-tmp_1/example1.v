// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
reg [3:0] b, sel;
always@(posedge clk) begin
    if (in[0]) begin        // When in[0]=1, go to output high
        sel <= 2-pos;
    end else begin           // When in[0]=0, go to output low
        sel <= 1;
    end 
    b <= sel;
end           

always @(posedge clk) begin
    pos <= 0;
    if (sel == 3)             // If decode_marker=1, carry b and insert into out
        out <= b | priority_encoder_out_si; 
    else if (sel == 2) 
        out <= b; 
    else if (sel == 1) 
        out <= priority_encoder_fs_si;
end
endmodule
