// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
input input_output(input ,output) = in();
module output_input( input out, output in ) = out;

module simple(input input1, input input2) ( output out, clk, reset )
        (output child_out, clk, reset) =
                wire_assign(input1, input2);
        reg [][128]byte regs[255];
        generate_child (regs, out, child_out)
        generate_child (regs, clk, clk);
        generate_child (regs, reset, reset)

        `

func RunAllTests() {
	for testName, inName, outName := range testStructs {
		RunTestTestCase(testName, inName, outName)
	}
}

func includeAssign(c *config) bool {
	endmodule
