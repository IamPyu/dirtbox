CC:=g++
CFLAGS+=-Wall
CFLAGS+=$(shell pkg-config --libs --cflags luajit)

SRC:=$(shell find src -name "*.cpp")
OUT:=bin/2dtest


main: build

build:
	@mkdir -p bin
	@$(CC) $(CFLAGS) $(SRC) -o $(OUT)


run: build
	@$(OUT)
