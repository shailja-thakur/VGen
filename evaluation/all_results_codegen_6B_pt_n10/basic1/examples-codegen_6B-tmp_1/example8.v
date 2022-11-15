// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
module wire_assign_reverse( output out, input in );

class WireAssign : public bert::Node {

public:

  WireAssign( const std::string& name,
              const bert::id_t& input_data_nel,
              const bert::Stack& candidates,
              const bert::char_vec_t& assign_id );

  virtual void eval();

  virtual WireAssign& assign( const bernoulli_t& p_ );
    
protected:

  std::string name_;  
  const bert::id_t input_data_nel_;
  int candidates_;
  const bert::char_vec_t& assign_id_;
  bert::uses<berntinst::Centroid, mclint::Memory> uses_;
  bert::aspects<berntinst::Centroidendmodule
