// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

RunResult half_adder_wrap(
output cout, sum,
output carry_out,
input a, b);
`)

} else if _, ok := VC.importExpr("HalfAdderWrap"); ok {
	var sum int64
	defer ast.Nil(VC.importExpr("Sum"))
	var carry_out int64
	
	tran  := VC.newtrans()
	
	for _, in := range VC.inputs {
		
		tran.setInput(input, in)
		loop( tran, switchCase, conChannel, in )
		
	}
	
	cmdfmt := ` sum =  0; tran.tobegin()
	
	for tran.done==0 {
	  var x, y int64

	  x, cout = tranend
endmodule
