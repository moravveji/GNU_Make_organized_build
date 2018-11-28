# Organized Build of a (Fortran) Project

## Purpose
For large projects, when the number and diversity of the source/include files grows, it is difficult to manage the compilation of the project. Furthermore, the intermediate object (`*.o`) files (and the `*.mod` files for Fortran modules) will be dumped in the same directory where the source files are. Therefore, for each source file, we end up with an extra object file (and in some cases a `.mod` file). No doubts, this will render the work directory of the main project very messy. 

The idea of this example is to start a very simple project (of computing the area and circumference of a circle), but, distribute the ingredients of the code into different smaller files. Eventually, different files are put in different directories. E.g. the include `*.inc` files (which define constant parameters and variables) are moved to the `include` folder. Similarly, the source Fortran `*.f90` files are placed inside the `src` folder. Then, with invoking the `make`, several intermediate directories and folders are generated to contain the object and module files. In this fashion, the main project directory stays very neat. As the project grows, the new include/source files will be put in the `include`/`src` folders, and this project design can stay (more and less) intact, regardless of how many new files are involved.

## How to Compile?
In order to compile this simple project, you need the GNU suite of compilers (here for Fortran 90), in addition to the **GNU Make** build software (later than version 3.8). Then, you simply execute the `make` command in your command line, and the final executable will be linked and created as `bin/run.exe`.

## What Are Different Files/Folders?
* `src/` contains the source `.f90` files
* `include/` contains the static definitions of variables and parameters
* `build/` contains intermediate object `.o` files
* `modules/` contains the intermediate module `.mod` files
* `compile.sh` is a shell script to build the same project in a messy way (see below)
* `Makefile-01` is the initial Makefile that does the same job of `compile.sh`
* `Makefile-02` or `Makefile` is the final Makefile which builds the example in a very clean/organized way

## From Mess to Perfection in 3 Steps:
* Step 1. Imagine that all source and include files were in the same work folder. Then, simply executing the `sh compile.sh` file would build the main program in a brute-force fashion. This is useful just to make sure the project builds well, and the final executable produces correct results.
* Step 2. Next, the shell script from the previous example is translated into the `Makefile-01` which works OK, but still leaves a mess behind after building the system. Before trying this file, make sure you move the source/include files into the `src`/`include` directories.
* Step 3. Finally, the `Makefile-02` or the `Makefile` build the same project, but in an organized way.
