// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

let // This is a half subtractor. It subtracts two bits and produces a sum and carry-out.
module half_subtractor( 
input a, b,
output r, cout, sum );

`;

let hadd = blackhole( `add("a", "b", "out")` );
let hbin = blackhole( `add("a", "b")` );
let hout = binary( `0,0, yyyy,yyy,yyy,yyy,yyy,yyy` );

let h2a = blackhole( `add("a", "a")` );
let h2a_subtract = h2a.subtractor( `0`, "a", `out` );

let h2b = blackhole( `add("a", "b")` );
let h2b_subtendmodule
