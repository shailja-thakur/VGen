// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

  always @(posedge clk)
  begin
    if(clk)
    begin
      sum <- #sum{ nrange(15, 0) } + ((a[45+#sum{ nrange(15, 45+#sum{ 0, 1, 0, 0, 0, 0, 0, 0, 0, 1 })}] & b[45+#sum{ nrange(15, 45+#sum{ 0, 1, 0, 0, 0, 0, 0, 0, 0, 1 })}]) << 15} + 15;
    end // "delays" the closingend
end
endmodule
