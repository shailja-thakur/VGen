// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
module assign([input, output]) output eq (in[bit_ch], out[bit_ch]);

// create the references for the input/outputs (true is true)
thread_flood_loop(out, true, out_q, in_q, assign);

// set the input signal and output it
w8 out8 = ( out[1] & 0x5555); // Invert bit1
w16 out16 = ( out[1] & 0xaaaa); // Invert bit3
wire_dispatch("out_q", out);

// create a channel and make the xbmc appear as another emulator
define ac_control( output) @wire_control( ac_control);  
addr = 0x8000 + (ac_control[1]<<16) + (ac_control[2]<<24);

// export AC_CMD_INSTANCE_endmodule
