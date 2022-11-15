// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
  clock clk( );  // Clocks the signals

  // creates a buffer with 4 words
 inbuf.create(m_wordsize);
  // connect it with the wire_assign module
  inbuf.connect( wire_assign_in );
// Step 2
  PROCESS(1)    // generates the clock
  logic_0 sect_1( );
  logic_1 sect_2( clk.posedge( ) ); // waveforms with the clocks
  logic_0 sect_3( sect_1 );
  logic_1 sect_4( sect_2 );
  logic_0 sect_5( sect_3 );
  logic_1 sect_6( sect_4 );
  logic_0 sect_7( sect_5 );
  logic_0 sect_8( sect_6 );
  logic_0endmodule
