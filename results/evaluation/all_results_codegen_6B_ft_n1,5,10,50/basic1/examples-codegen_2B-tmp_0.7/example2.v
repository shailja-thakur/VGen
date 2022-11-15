// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in

#include <iostream>
#include <algorithm>
#include <iterator>
#include <stdlib.h>
#include <vector>

std::vector<int> v;

int main(int argc, char * argv[])
{
    v.resize(3);
    v[0] = 0;
    v[1] = 1;
    v[2] = 2;

    std::cout << "size: " << v.size() << std::endl;
    std::cout << "capacity: " << v.capacity() << std::endl;
    std::cout << "capacity: " << v.max_size() << std::endl;
    
    return 0;
}
endmodule
