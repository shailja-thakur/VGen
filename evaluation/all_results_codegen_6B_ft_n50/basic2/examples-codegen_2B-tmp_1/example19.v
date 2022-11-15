// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    and_gate::and_gate()
}

using namespace std;

// inputs are located at 0, 1 and 2
class CompositeGate {
    public:
    void process();
    CompositeGate();
    CompositeGate( char * name, short in, short out );

private:
  short input1, input2;
  short output;
  int num;
  char * name;
  string str_name;
};

extern "C" {
CompositeGate::CompositeGate( char * name, short in, short out ):
   name(name), str_name( (const char *)name ), input1(in) , input2(out), output(0), num(0) {
  }

CompositeGate::CompositeGate() {
  num = 0;
  name = NULL;
endmodule
