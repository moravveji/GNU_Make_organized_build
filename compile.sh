
module load foss/2015a

FC='gfortran'
FCFLAGS='-ffree-form -g -O2 -Wextra -Wall' 

${FC} ${FCFLAGS} -c lib.f90 -I. -o lib.o
${FC} ${FCFLAGS} -c main.f90 -I. -o main.o
${FC} ${FCFLAGS} lib.o main.o -I. -o run.exe
