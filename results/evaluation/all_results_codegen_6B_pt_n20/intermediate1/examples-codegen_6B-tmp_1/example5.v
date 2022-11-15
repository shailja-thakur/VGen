// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );


// Register state that this module uses.
module output(
ready_out, cout, tmp );


(*Msg("\n");)

int sum = 0;
for (int i = 0; i < 36; i++) {
	for (int j = 0; j < 3; j++) {
		cout << tmp << " ";
		cout << hex << j << " ";
	}
	cout << " ";
	cout << hex << i << " ";
	cout << dec << " \n";
	for (int j = 0; j < 3; j++) {
		cout << "0x";
		cout << hex << a.written[i] << " ";
	}
	cout << " ";
	for (int j = 0; j < 3; j++) {
		cout <<endmodule
