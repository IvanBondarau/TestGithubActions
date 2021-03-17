all: source analyze
	./test

analyze:
	clang-tidy test.c  -checks=-*,clang-analyzer-*

source:
	clang test.c -o test -W 