#include <stdio.h>
#include <stdlib.h>
#include "Cso/Cso.h"

int main(int argc, char* argv[])
{
	Cso cso;
	Cso_init(&cso);
	Cso_create_window(&cso);
	return 0;
}
