// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
output __wire_assign( in, out );

// The inverse of a wire may be a synapse
module syn_assign( synapse syn, output out );
// assign out to syn
output __syn_assign( syn, out );

//------------------------------------------------------------------------------
// select
module switch_select( input in, input sel_out, logic out ) {
    
    logic [0:0] sel_que;
    input sel_in; // selected signal
    logic sel_sel; // select signal
    
    oscilator l; // as output
    pulsator rx; // as input
    
    // Shift l to update l when SELECT becomes SELECTED
    always {
        l = l << 1;
        out =   sel_sel && sel_que[0];
        out = ( sel_que[(selendmodule
