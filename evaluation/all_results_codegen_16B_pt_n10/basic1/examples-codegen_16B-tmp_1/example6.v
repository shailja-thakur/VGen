// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
// ...
// if out = 1 then:
//
// just output one data packet of 0s
// next cycle
// ...
// if out = 0
//   - snort
//   - iptables
//   - ...
// endif
//
// note that out can be 0 unless implicitly tied to $clock
module assign_cc( input cc, output out ) {
  module name @ ( input cc ) {
    assign_cc_impl( $stdout, $screen );
    $integral := $screen;
    $screen   := $integral[sym_stdout];
    $integral := $integral[sym_clock];
    $integral   %-= $integral.cell[1]
    $integral   %:= $integral.$row.cell[$integral.integral]
    $clock     %-= $integral.$endmodule
