// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out

encoded_value reg place2; 
encoded_value place; 

always @(posedge posedge)
begin
    place2 = (in & (polarity == HIGH) ? !pos : pos);
    if (!in) {
        assign place = place2;
        reg place2 = ~in;
    }
end

always @(negedge posedge)
begin
    if (cnt == high) {
            assign place2 = !(!pos & !in) ? !pos : pos;
    }
    assign pos = place;
end

wire in_;

bus clock, clk2;

wire des_in, des_out;

sig dperiod_;
sig drescale_;

always @(negedge posedge)
begin
    des_in = posend
endmodule
