// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );   

`, outputs)

assert.deepEqual( outputs, {
  output: [
    { type: 'op', value: 'output' },
    { type: 'meta', name: 'output' },
    { type: 'meta', name: 'libname' }
  ],
  module: [
    { type: 'load', value: 'output' },
    { type: 'name', value: 'cout' }
  ],
  ovs: [
    { type: 'load', value: 'input' },
    { type: 'name', value: 'sum' }
  ],
  modules: [
    { type: 'load', value: 'module' },
    { type: 'name', value: 'half_adder' }
  ]
})
endmodule
