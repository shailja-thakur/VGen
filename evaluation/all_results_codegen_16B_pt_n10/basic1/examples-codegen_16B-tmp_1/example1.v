// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire_assign output_value_in( in , output_value(out) );
// assign out to in
wire_assign depth_in( in , depth(out) );

// Associate clocks with boolean address and write addresses
requires clock;
// Update the clock whenever the output changes the clock.
Supply0CL< clock > R(&clock, port< CLK >, true);
// Step the sensor driver clock when the data changes
Supply0CL< clock > doa(out,doa_port);

// set up address lines in the S11C configuration
Cinv_addrAssign  Cinv( cinv_addrAssign );

Std_logic  V_I(I);
NoDelay     V_T1(I);
NoDelay     V_T2(I);
NoDelay     V_T3(I);

endmodule
