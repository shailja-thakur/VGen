// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
always@* begin 
    // If the value of sel is 0, set out to a
    // associate the value of a with the value of out
    if (sel==0)
         assign [4:0] {{out,a}} = ignore;
    // If the value of sel is 1, set out to b
    else if (sel==1)
         assign [4:0] {{out,b}} = ignore;
end 
endmodule
