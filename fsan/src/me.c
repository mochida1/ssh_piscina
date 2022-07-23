#include "../headers/teste.h"

int teste (void)
{
	char	*str;

	str = malloc (sizeof(char) * 6);
	if (*str)
	{
		str[0] = 'o';
		str[1] = 'l';
		str[2] = 'l';
		str[3] = 'e';
		str[4] = 'h';
		str[5] = 0;
	}
	else
	{
		str[0] = 'H';
		str[1] = 'E';
		str[2] = 'L';
		str[3] = 'L';
		str[4] = 'O';
		str[5] = 0;
	}
	printf ("%s\n", str);
	return (0);
}
