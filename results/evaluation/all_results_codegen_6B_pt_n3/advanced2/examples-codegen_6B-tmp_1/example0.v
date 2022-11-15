// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
when(reset=1) begin n = 0;
     end else begin
     end.

when(slowena=1) begin
  if (n <= 9) begin
    q[n] = q[n+1];
    n = n+1;
  end;
end;

reg [0:2] m;

when (clk = 1) begin
    m <- reg;
    if (slowena = 1) begin
    fout round m, 99'999 decimal modes.
    end
    round m, slowena;
    reg <= m;
end.
endmodule
