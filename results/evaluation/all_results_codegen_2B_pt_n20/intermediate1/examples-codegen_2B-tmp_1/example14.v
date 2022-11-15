// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

initial begin

  cout = 0;
  sum = 0;

end

assign [ a ] 5;
assign [ b ] 0;

inc ( { a } );
next;
assign [ sum] 0;
next;

tri ( [ a ] | [ b ] );
next;
assign [ cout ] { sum|cout }[ 1 ];
next;

endprogram
endmodule
