// This is a counter that counts from 1 to 12
module counter( 
    input clk,
    input reset,
    output reg [3:0] q
); 
// update q on the positive edge of the clock according to the following cases:
// on reset, assign q to 1
// else if q is 12, assign q to 1
// else, increment q by 1 
always (normreset if (reset) begin
  q <= 1;
  if (q == 12) begin
    q <= 1;
  end
  if (q > 12) begin
    q <= 12;
  end
  q <= q + 1;
end
end
end

rrx clk;
rrx reset;

aux = counter(clk, reset);

endfunction

a = 1;
b = 2;
c = 3;
d = 4;
f = 11;
result = 33;
d, e, f, result, a, b, c, d, e, f, g;
endmodule
