// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
assign out = in;

module block();

reg [4:0] array [1023:0];

integer i;

// Fill the array with data...
for( i = 0; i < size; i = i + 1 )
	begin
	array[i] = i;
	end

// Given a Variable, Look it up in the array, and it's Value
$value$plusargs("blocksize=%s", size);

// Fill the array with data...
for( i = 0; i < size; i = i + 1 )
	begin
	array[i] = i;
	end

// Given a Variable, Look it up in the array, and it's Value
$value$plusargs("address=%s", address);

// Fill the array with data...
for( i = 0; i < size; i =endmodule
