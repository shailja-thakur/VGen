// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out

always @ ( a, b ) begin
if a == 1'b1 && b == 1'b1 then
out = 1'b1; 
else
out = 1'b0;
end
module add_8_bit_tb();
// declare variables
reg a, b;
wire cin;
wire sum;
wire overflow;

// assign variables to ports that come from the outside
// parameter zero prints out body for a case where value = 0

_8_bit_Adder FA ( 
.A(my_switch),
.B(my_switch),
// Retrieval info: UAX: HAZARD_DETECTION.V: SWITCH_DEFAULT_CHANGING STRING "NO" 
.SUM(sum), 
.OVERFLOW(overflow), 
.CIN(cin)); // use FA's cendmodule
