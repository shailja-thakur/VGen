// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

integer state;

always @(posedge clk) begin
  if(a***b)
  
  cout <= 0 ;
  
  if(state!=1)
  
  cout <= (state < 5) && (state >= 0) && edge, 
    cout(1) <= cout and state(4:0) <= state--;
  else 
    cout <= (state < 5) && (state >= 0) && !edge,
      cout(1) <= cout and state(4:0) <= state--;
fi;
end
endmodule
