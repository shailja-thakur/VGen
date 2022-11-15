// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
assign out = in;

// Instantiate the module
module main_module ( clk, rst, anOut, anIn1, anIn2, mode_in, BTND, DIM1, DIM2 );
// Declare the inputs to be connected to
input clk, rst, anIn1, anIn2, BTND, mode_in



// This is the module where you connect inputs to output. 
// Note that the inputs should be small
// since everything is going through this module.
// Ports関連
// clk => PWM發送需要的信號數據
// anOut => 低電药塌置信號
// anIn1 => 低電药款式 kiss input
//endmodule
