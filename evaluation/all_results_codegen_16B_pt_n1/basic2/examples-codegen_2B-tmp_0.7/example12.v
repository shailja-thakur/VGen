// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out

architecture and_gate_arch =
    (
        AND (a, b) => out
    );

// $ cat /tmp/and_gate.v
and_gate.v
    `
    + "`$(top.tgt)"
    + `
and_gate.v
    `
    + "`$(top.tgt)"
    + `
`

const test = t => {
  t.ok( verifyModule( top, top.v ), "verify top level" )
  let and_gate = top.main
  t.ok( and_gate.exists(), "and_gate exists" )
  t.ok( and_gate.exists(), "and_gate exists" )
  let m = and_gate.module
  t.ok( m, "and_gate.module exists" )
endmodule
