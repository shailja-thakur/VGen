// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
write_buf wb;
{
    write( out, in );
    // always recompute output
    // see the explicitly rebuilt built-ins as examples
    wb.reinit();
    p_fs_write(&in, fsendPF); // for analysis
    wb.swap();
    fx_listecl_2( &wb, fsendPF );
    out = wb.get( 0 );
}
"""
endmodule
