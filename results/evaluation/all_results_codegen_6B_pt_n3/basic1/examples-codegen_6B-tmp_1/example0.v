// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
out = in;
// fuser-unused result CAN be removed

assign( private(long&) )
// assign private(long)
{ long& v = *(long*)out;
  v = in;
}

//
append
// append
input in2;
output out2;
empty_sequence(out2);
sequential_app_name(out2,in2,"append");
assign( public( long) )
{ out2 += in2;
}

//
slice( input in1[2], output outw[2] )
// slice and its parameters are mutable. To reset the output you need to reset both
util.require("Mutable_base");
new_base(side_by_side,swi.side_by_side(input(),out(),out,new(MSELECT,two,MUTABLE,"Mendmodule
