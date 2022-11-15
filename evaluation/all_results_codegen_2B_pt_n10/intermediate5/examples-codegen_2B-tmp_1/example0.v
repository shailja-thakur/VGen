// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
initial begin // this yields output
  if (in_load <=> 0) {
    out = data;
    ISZERO = 0;
    // wait for load to complete
  } else if (amount > 0) { // wait for load to complete d wait
    if ((interrupt_balance>0) and (READ(interrupt_balance)) == 0) begin
      writeto(data, ~0);
      do // write 0x77 to out before rotate to recycle memory
        WRITEO(_test_pattern);
      until (interrupt_balance<=0);
      do
        writeto(data, (amount-1));
      while (READ(_test_pattern));
    end
    out = to_rotate(0);
    carry = 0;
    r7 = 1;
    rnc = 0;
    for (dp=1; dp<endmodule
