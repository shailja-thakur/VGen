// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    assign out = a && b;

*/

#include <iostream>
#include <memory>
#include <vector>

class AndGate {
public:
    AndGate( std::shared_ptr<std::vector<std::shared_ptr<std::vector<bool>>>> inputs, 
             std::shared_ptr<std::vector<bool>> output )
        : _inputs( inputs ), _output( output ) {
    }

    bool operator()( std::shared_ptr<std::vector<bool>> inputs, std::shared_ptr<std::vector<bool>> output ) {
        std::shared_ptr<std::vector<bool>> inputs_copy( new std::vector<bool>( *inputs ) );
        std::shared_ptr<std::vector<bool>> output_copy( new std::vector<bool>( *output )endmodule
