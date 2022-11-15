// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire_assign( in, out );

// Submodules
go_select i1(i1_out,has_inv,has_num);

// Define module entry point
module i0_entry;
// Section 1 - definicja minimalna
i0_entry: offset_addr();
// Section 2 - dodanie komponentów
go(tobyte(i1.data.out)); //0 - parycany, 1 - nieparzystany
// Section 3 - konfiguracja
safecall(go_default);
// End of module
endmodule
