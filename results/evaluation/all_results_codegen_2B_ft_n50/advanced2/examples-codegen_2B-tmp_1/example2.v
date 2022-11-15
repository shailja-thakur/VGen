// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
/*
assign increment = ((slowena == 1) & AssadInput & (q != 9)) ? 1 : 0 ;

always @(posedge clk) begin
if(reset == 1) q <= 0 ; 
else if(slowena == 1) begin
if(��λ_input == 1) begin
case(q)
0 : q <= 1 ; 
1 : q <= q + 1 ;
default : q <= 0 ;
endcase
end
else q <= q ;
end
*/

always @(posedge clk) begin
if(reset == 1) q <= q2 ; 
else if(slowena == 1) begin
if(q > 4'h9) q <= 0 ; 
else 
if(quietena == 1) begin
case(q)
0 : q <= 1 ; 
1 : q <= q + 1 ;
endend
end
endmodule
