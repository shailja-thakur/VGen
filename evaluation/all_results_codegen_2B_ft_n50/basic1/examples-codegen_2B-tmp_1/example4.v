// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
assign out = in;


// Design a program that uses both an input string and an output string
module main;

string a = "in1";
string b = "in2";
wire aout, bout;
assign aout = b[a];
assign bout = b[-a-1];

initial begin
$display("\t\t\tAND BETWEEN INPUT STRINGS:");
$display("Assigning output to input");
$display("\t\t\t " + b + " " + ": " + bout);
$display("\t\t\t " + a + " " + ": " + aout);
$display(" ");

$display("\t\t\tAND BETWEEN OUTPUT STRINGS:");
$display("Assigning output to inputvalue");
$display("\t\t\end
endmodule
