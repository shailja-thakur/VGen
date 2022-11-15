// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input a, b;
output cout, sum;

always #(MASTER_CLK_FREQ("half_adder.v")) begin: seq

	input cin, clk;
	output carryin, sum;

        cout <= a;
        sum <= b;
        carryin <= clk;
        // Seq End
        if ( clk ) begin
        a <= a + carryin;
        b <= b + ! carryin;
        end else begin
        a <= 0;
        b <= 0;
        cout <= 0;
        sum <= 0;
        cout <= a;
        sum <= b;
        end
}

end
endmodule
