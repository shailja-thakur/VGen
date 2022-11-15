// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always_comb case ar(clk, reset, clkena, ena) begin
          case ({breve(slowena, reset, clkena, ena), done()} = reset)
            {q <= 3'b000;}
          case (clkena && aer(clk, ena)) begin
            case ({breve(slowena, reset, clkena, ena), done()} = reset)
               {q <= 2'b00 + q;}
            case (clkena && aer(clk, ena), q > 1);
               {q <= 3'b0 + q;}
            endcase
          endcase
        endcase
endmodule
