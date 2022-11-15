// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
module wire_assign_out_to_in( input out, output in )();

class ObjectWithA
{
public:
	ObjectWithA( const Class & a );
	~ObjectWithA() {}
	void execA( int ca);
	void setA( const Class & ca);
	Class refA(){ return a; }
protected:
 	Class a;
	typedef Class Bound;
private:
// Provide support for initialization
	ObjectWithA() {}
	ObjectWithA(const ObjectWithA & ) {}
	ObjectWithA& operator=(const ObjectWithA &) { return *this; }
};
	
	ObjectWithA::ObjectWithA( const Class & a ) 
			: a( a ) {}

	void ObjectWithA::execA( int aa )
	{
	a.execA( aa );endmodule
