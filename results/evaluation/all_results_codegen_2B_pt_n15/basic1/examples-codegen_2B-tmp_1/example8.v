// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
extern input in;
extern output out;

// this declaration makes output the input a read-only property
// because of the implicit assignment
// instead of
// in = input;
// use
// const auto in = input;
// const auto output = input;
const auto in = input; // no output

void transform() {  // hide above variable declarations
    // use a static variable to identify
    void input();
    float input_property();
    out.assign(in.property_ref(), input_property);
}

int main() {
  input.size = 5;
  float computed_property = transform();
}


output computation_expr(input in, output out) {
	float computation_expr(out, input_property);
}

static auto to_float(const double& inOut) {
	return outField(inOutendmodule
