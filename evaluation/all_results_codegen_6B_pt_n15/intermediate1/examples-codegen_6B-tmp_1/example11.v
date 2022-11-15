// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input clk;
input enforceclk;

input clk_driver;

protected
input clock;
protected
output clock_driver;

// The input clock is zero to start:
error reset_nclk();

precision int2 int2_3(a,b);

// SPI to do add
// pre adder_out = sum + a + b + carryOut,
// a is state register, b is data register.
pre int2 error_adder_out = soap(clk, enforceclk, 0)(~a, b);
// a and b are data registers.

// FHAdder.
error_adder_out <= int2_3( a(clkout), b(clkout), cout );

    always@(posedge clk) { clock_driver <= 1; }
    always@(negedgeendmodule
