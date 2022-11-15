// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
 assign out = a & b;

 endmodule
module ripple_carry_counter(clock,reset);
input clock,reset;
//output reg [3:0]q;

reg [3:0]q,q_temp;
always @(posedge clock, posedge reset)
begin
if(reset)
q<=4'b0;
else
q<=q_temp;
end

always @(q)
begin
q_temp<=q-1;
end

endmodule
