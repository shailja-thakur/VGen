// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire_assign.in = in;
wire_assign.out = out;

// Bee b1;
// class Bee:
// 	public:
// 		B int = 1;

// 	behaviour:
	int b1()
	{
		for(;;)
		{
			// preserve input
			wire cin = in;
			// preserve output
			wire cout = out;

			// input: take input from bee
			if (cin) in = (unsigned)(~in + 1);

			// output: send output to bee
			if (cout != 0) out = (unsigned)(~out + 1);
		}
	}
};endmodule
