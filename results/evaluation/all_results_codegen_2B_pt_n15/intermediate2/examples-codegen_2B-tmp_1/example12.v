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
initial begin 
    counter1.clk <= clk;
    counter2.clk <= clk;
    counter3.clk <= clk;
    counter4.clk <= clk;
    counter5.clk <= clk;
    counter6.clk <= clk;
    counter7.clk <= clk;
    counter8.clk <= clk;
    counter9.clk <= clk;
    counter10.clk <= clk;
    counter11.clk <= clk;
    counter12.clk <= clk;

    counter1.reset <= reset;
    counter2.reset <= reset;
    counter3.resett <= reset;
    counter4.resett <= reset;
    counter5.resett <= reset;
    counter6.resett <= reset;
    counter7.resettend
endmodule
