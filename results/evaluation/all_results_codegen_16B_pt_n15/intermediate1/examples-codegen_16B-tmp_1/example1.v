// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
always #( 2 ) begin
cout <= [&] () {
	// Flip low bit to turn into carry.
	sum <= (a | 0xAA) + ( b & 0xAA ) + carry; 
	carry <= (~a|0) & b;
};
end

half_adder half_adder_feedback = half_adder_no_feedback;


// Coin counter. This is a half adder designated to count the number of coins jumped
// when the counter reaches 0. The outputs to 1 and 2 are accumulated.
module counter_slow( 
input cin, cout );
always #( 2 ) begin
  if ( cin and cout ) {
  	cout <= 1; 
    if  (cout >= 4) {
      cout < 2;
    }
  } else {
     cout <= 0;
  end
endmodule
