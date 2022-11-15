// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire_assign( input, output);
// ... or you can simply use a terminal in wire_assign
output wire_assign( input, output out );
// assign out to in
wire_assign( input, output);
// ... you can also use a terminal in each signal in wire assign
...
// assign integer inputs to wires 
wire input;
input wire_assign( input ); // Assignment means returns encapsulated value
int input v;
v = wire_assign( input ); // Equivalent to wire& input
// Bunch of examples that uses wire register
...
// and is done
*/

TEST(WireRegister, CANBeCreated) {
    wire output;
    uint result = 0;
    std::tie(output, result) = wire_assign(1);
    EXPECT_EQ(1u, output);
    EXPECT_Eendmodule
