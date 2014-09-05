/* main.cpp for makefile test */

#include "./inc/hell.h"

using namespace std;

int main(int argc, const char* argv[])
{
	printf("%s:%d\n",__FILE__,__LINE__);
	#if 1
	hell* newhell = new hell("hello");
	//newhell->hell("hello");
	if(newhell->start()){
		newhell->showhell();
	}
	#endif
	return 0;
}
