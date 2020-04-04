# ni-fpga-helper: National Instruments C API library

This project packages the NiFpga.c and NiFpga.h provided by LabView FPGA
to integrate C code with FPGA firmware. It builds a library with the
code and installs it, along with the include file. The library is called
libNiFpgaHelper.so. A sample NiFpga.c and NiFpga.h are provided, but
depending on you CompactRIO version, when you generate the C API for your
labview project, put the generated NiFpga.c and NiFpga.h here, and build.

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
