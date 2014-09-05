/*  hell test for make file */

#include <cstdio>
#include <cstdlib>

class hell{
public:
	hell(char* str){ hellstr = str; }
	~hell(){ hellstr=NULL; }
	int start();
	int showhell();
private:
	char* hellstr;
};
