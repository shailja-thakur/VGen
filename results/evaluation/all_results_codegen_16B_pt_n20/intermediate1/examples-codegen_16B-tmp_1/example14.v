// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input a, b;
output sum;

initial begin
  sum = a + b;
  cout <= (a & ~b) | (b & ~sum) | (sum & ~result);
  cout <= $display("%x : out = 0x%x",a,sum); 
end

// Global variables that are shared between multiple modules
input clock;
output result;

/* Custom stuff */
input rom_enabled;

begin
  reg [5:0] pin, sum, result, carry_in;
  reg [4:0] Sum;
  reg [3:0] int_cfg;
  reg [7:0] En, Clear;

  begin
    // configuration: 1/parse, interval: 17, real clock: 66.66 MHz, 
    ram [int_cfg] = 0b0100101010;end
end
endmodule
