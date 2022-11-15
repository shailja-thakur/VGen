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


signed_adder output ;

reg a ;
reg b ;
reg out ;
reg overflow ;
 
always @n esc_dumped_to_display = @n debug('in0')$;
always @n esc_dumped_to_serial = @n debug('in0')$;
always @n esc_dumped_to_alarm = @n debug('in0')$;
alert( in$ + '@n' + in );
  
always
begin
#copy a[words] reg a[words]
#copy b[words] reg b[words]
#assign s[words] reg out
#assign overflow flag reg overflow

#ref SDo contention with IN0
@n SReadCONTAllIN;

#lsb of s[words] valid when overflows occured
not  lsb (y3.d);
end
endmodule
