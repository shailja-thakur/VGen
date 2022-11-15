// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in

net {
    wire a = $6;
    net b = $1([1 2 3], a);
    output a;
}
```

```
{ output a: $2 }
{ output b: $1([1 2 3]) }
"""
import aspw.as_pid


def $6():
    """
    In output to in
    """
    # Your code here
    master_as_pi.name = "out"
    master_as_pi.port = $6


def $1($in, $out):
    """
    assign inputs to outputs
    """
    master_as_pi.name = "in"
    master_as_pi.port = $1


class ASPwModule (object):
    """
    Representation of a module
    """
    def __init__(selfendmodule
