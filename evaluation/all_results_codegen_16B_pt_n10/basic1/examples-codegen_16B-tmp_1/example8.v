// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire_assign J = I.plus_assign(5);

//2 d. Design a module that assigns outputs to outputs
module wire_assign II = I.plus_assign(5);
// 3 e. Design a module that assigns outputs to inputs
module inout_wire_assign = I.plus_assign(5); )/

 Module Definition Source File

 This is the automatic generated parent Module Definition Source File.
 edat will generate the hint comment. Before you can use the hint comment,
 you have to compile the "hint" section at least once.
 If you ahs compile more than one time, you have to change the "edat_count" and
 "edat_hint_comment_count" and re-compile.
 You are able to edit arbitrary stuff in between. Every valid block has to
 end with a }; block_end.

edat_endmodule
