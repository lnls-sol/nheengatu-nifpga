# ni-fpga-helper: National Instruments C API library

This project packages the NiFpga.c and NiFpga.h provided by LabView FPGA
to integrate C code with FPGA firmware. It builds a library with the
code and installs it, along with the include file. The library is called
libNiFpgaHelper.so and works by using dlopen() to call the real library
(usually in $nilibdir/natinst/lib/libNiFpga.so).

## Usage:

Write a program that uses the NI FPGA C API and link to this library (for
example, by using -lNiFpgaHelper link flag):

	$ gcc -o someprogram someprogram.c -lNiFpgaHelper

Make sure the library is in your library search path (or explicitly specify
link time and run time search directories).

## Build:

	$ ./build.sh

## Install:

	$ sudo ./build.sh install
