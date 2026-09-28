#include <iostream>
#include "calculator.h"

int main()
{
	Calculator calc;
	
	double a = 5.0;
	double b = 3.0;

	std::cout << "a = " << a << ", b = " << b << std::endl;
	std::cout << "Add(a, b) = " << calc.Add(a, b) << std::endl;
	std::cout << "Sub(a, b) = " << calc.Sub(a, b) << std::endl;

	return 0;
}
