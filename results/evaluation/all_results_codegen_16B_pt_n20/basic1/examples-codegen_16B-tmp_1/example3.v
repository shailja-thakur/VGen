// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
assign in = out;
// Title case all signal names found in an model
sub model noun_case()
    test_status = ready;
begin:
    new out, in;
    // The signal test_status and its associated instruction call de_register
    // return 0 if successful, non-zero if unsuccessful
    if not de_register( test_status ), fail;
    
    // The signal equ -1 if test_status is non-zero, otherwise equ 0
    if test_status != 0
    then
        new empty;
        eq ( empty = -1 ), fail;
        emit no_store_set_cond, empty;
        emit no_store_clr_cond, empty;
    else
        eq ( empty = 0 ), fail;
        emit store_set_cond, empty;
        emit load_clr_cond, emptyend
endmodule
