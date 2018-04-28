UNAME_S := $(shell uname)

LD_FLAGS = -lglut -lGL -lGLU -lGLEW
NVCC = /usr/bin/nvcc
NVCC_FLAGS = -g -G -Xcompiler "-Wall -Wno-deprecated-declarations"


all: flashlight

flashlight: flashlight.o kernel.o
	$(NVCC) $^ -o $@ $(LD_FLAGS)

flashlight.o: flashlight.cpp kernel.h interactions.h
	$(NVCC) $(NVCC_FLAGS) -c $< -o $@

kernel.o: kernel.cu kernel.h
	$(NVCC) $(NVCC_FLAGS) -c $< -o $@

