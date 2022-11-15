// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in

export wire in;
export wire out;

describe("Test of function 'wire_assign'", function () {

    var config = {
        variables : {
            in: 0,
            out: 0
        },
        ops: [{ op1: config.variables.in, op2: config.variables.out }]
    }

    var test_algorithm = function (){

        algorithm = AlgorithmFactory(config);
        
        assertThat(algorithm.run(), is(true) );          
    }
    
    var test_manual = function () {

        var in = 0;
        var out = 0;
        
        var algo = hgraph.fromString(transplantions.wire_assign(in, out));

        assertThat(algo.run(0), is(equalTo(in))endmodule
