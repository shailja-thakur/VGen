// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire_assign in( in, out );
// which will print a warning message
electronics_warning_suitable_transistor_hint(0);
// providing a warning
electronics_warning_complex_name(0,0,"transistor","CPE");
// providing a descriptive warning
electronics_warning_module_name("round transistor CPE",0);
// Warning about a nested use of transistors
electronics_warning_nested_module( 0, module_name, 0, "CPE" );
// Nested use of a module (this declares reference to a custom module)
electronics_warning_module_transistor(0, "CPE", for_optimization);
// Custom transistors, taking some argument
electronics_warning_module_section("CPE", section_name, 100);

// Creating a submodule using "mode" attribute
module_Bendmodule
