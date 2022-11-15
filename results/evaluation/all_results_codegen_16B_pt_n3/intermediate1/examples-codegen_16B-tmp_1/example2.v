// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

reg out;
reg [2:0] sum;

always @(posedge a or posedge b)
 begin
 
 set out = a && b;
 //states are accessible from output ports
 // intended as a half-adder representation
 if( out )
 then
    aoulow = a;
    boulow = b;

    sum = aoulow + boulow + out;
    if(out = 0)
        sum <= 128;
 else
    sum = !sum;

 end



        
  cout <= sum;

end






endmodule
