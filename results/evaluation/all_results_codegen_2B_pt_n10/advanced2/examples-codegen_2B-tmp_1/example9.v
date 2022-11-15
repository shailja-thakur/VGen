// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(*)
  begin
    constant for 3 : int=9 downto 0 ;
  end

  allow slowena to q [5:0];

always @(*)
  begin
    constant reg ena : int = 1'b1 ;
  end

always @(*) !slowena comb (
  constant clk : in int;
  constant slowena : in  bit;
  constant reset  : in  bit;
  fast ~clk;
  dup
    if (clk[1]==0) begin
      era1 = ena;
    end else begin
      era2 = ena;
    end else begin
      era3 = ena;
    end
);

assign [q[3:0]] @count_slow.outq = ena_clk ^ ena ;
endmodule
