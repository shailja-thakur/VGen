// Design a signed adder that adds two 8-bit 2's complement numbers, a[7:0] and b[7:0]. 

module signed_adder(input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
); 

// The numbers a and b are added to the output s. 
// assign the occurence of the signed overflow of a and b to the output overflow.
// a signed overflow occurs if the most significant bits of a and b are low and the most significant bit of s is high
// a signed overflow may also occur if the most significant bits of a and b are high and the most significant bit of s is low


sneg_compare(s, overflow);

// This subroutine reads data from a port until it is empty. It then writes
// the data to a port until the data is cleared. This returns the number of
// bytes read.

byte read_port(byte out_port, byte in_port)
{
  byte out;
  do {
    out = in_port;
    in_port = data_in;
  } while (out_port != in_port);
  return out;
}

// This subroutine writes data to a port until it is full. It then reads
// the data from a port until it is cleared. This returns the number of
// bytes written.

byte write_port(byte in_port, byte out_port)
{
  do {
    out_port = in_port;
    in_portendmodule
