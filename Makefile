# Copyright 2013 by Martin Moene
#
# Distributed under the Boost Software License, Version 1.0. (See accompanying
# file LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)

CXXFLAGS   := -Wall -Wextra -Weffc++ -Wno-missing-braces
CXXFLAGS03 := $(CXXFLAGS) -std=c++03
CXXFLAGS11 := $(CXXFLAGS) -std=c++11

all: test_lest test_lest_decompose test_lest_cpp03 example1 example2 example3 example4

test_lest: test_lest.cpp lest.hpp
	$(CXX) $(CXXFLAGS11) -o test_lest test_lest.cpp
	./test_lest

test_lest_decompose: test_lest_decompose.cpp lest_decompose.hpp
	$(CXX) $(CXXFLAGS11) -o test_lest_decompose test_lest_decompose.cpp
	./test_lest_decompose

test_lest_cpp03: test_lest_cpp03.cpp lest_cpp03.hpp
	$(CXX) $(CXXFLAGS03) -o test_lest_cpp03 test_lest_cpp03.cpp
	./test_lest_cpp03

example1: example1.cpp lest.hpp
	$(CXX) $(CXXFLAGS11) -o example1 example1.cpp
	-./example1

example2: example2.cpp lest.hpp
	$(CXX) $(CXXFLAGS11) -o example2 example2.cpp
	-./example2

example3: example3.cpp lest_decompose.hpp
	$(CXX) $(CXXFLAGS11) -o example3 example3.cpp
	-./example3

example4: example4.cpp lest_cpp03.hpp
	$(CXX) $(CXXFLAGS03) -o example4 example4.cpp
	-./example4

clean:
	rm test_lest test_lest_decompose test_lest_cpp03 example1 example2 example3 example4

