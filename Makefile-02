
FC = gfortran
FCFLAGS = -g -O2 -Wall -Wextra -ffree-form

DIR_INC = include
DIR_SRC = src
DIR_BIN = bin
DIR_BLD = build
DIR_MOD = modules
DIRS    = ${DIR_BIN} ${DIR_SRC} ${DIR_INC} ${DIR_BLD} ${DIR_MOD}

SRC_F90 = $(wildcard ${DIR_SRC}/*.f90)
SRC_INC = $(wildcard ${DIR_INC}/*.inc)
SRC_OBJ = $(patsubst ${DIR_SRC}/%.f90, ${DIR_BLD}/%.o, ${SRC_F90})
SRC_MOD = $(patsubst ${DIR_BLD}/%.o, ${DIR_BLD}/*.mod, ${SRC_OBJ})
SRC_EXE = ${DIR_BIN}/run.exe

.PHONY: all check clean
all: check compile link

check: ${DIR_BIN} ${DIR_BLD} ${DIR_MOD}
${DIR_BIN} ${DIR_BLD} ${DIR_MOD}:
	@mkdir -pv $@

compile: ${SRC_OBJ}
link: ${SRC_EXE}

${DIR_BLD}/%.o : ${DIR_SRC}/%.f90 ${SRC_INC}
	${FC} ${FCFLAGS} -c $< -I${DIR_INC} -J${DIR_MOD} -o $@

${DIR_BLD}/main.o: ${DIR_BLD}/lib.o

${SRC_EXE}: ${SRC_OBJ} #${SRC_INC}
	${FC} ${FCFLAGS} $^ -o $@

clean:
	rm -f  ${SRC_MOD} ${SRC_OBJ} ${SRC_EXE} 
	rm -rf ${DIR_BLD} ${DIR_BIN} ${DIR_MOD}
