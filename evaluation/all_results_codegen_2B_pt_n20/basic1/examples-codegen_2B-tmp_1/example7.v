// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire my_wire( i32 in ) << [ 2,3 ]
{
	output [ input = i32 in ] out
}
i32 my_out = my_wire( in, out, [ my_wire(), ... in ] in )
)";
const std::string error_message =
	"expected formatted string but found '<SPACE> in line number 3";
TEST(Iotik_preprocessor_data, DeclareAssign)
{
	Parser parser;
	std::vector<string> module_c;
	std::vector<std::string> file;
	file.push_back("../../iotik/iota/wire_assign.tsl");
	module_c.push_back(read_from_file("wire_assign_test.tsl"));
	parser.set_file_to_parse(module_cendmodule
