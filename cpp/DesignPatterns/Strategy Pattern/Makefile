CXX=clang++
CFLAGS=-c -Wall
LFLAGS=-o
SRC=WeaponBehaviour.cpp AxeBehaviour.cpp BowAndArrowBehaviour.cpp KnifeBehaviour.cpp SwordBehaviour.cpp Warrior.cpp King.cpp Knight.cpp Queen.cpp Troll.cpp main.cpp
OBJ=WeaponBehaviour.o AxeBehaviour.o BowAndArrowBehaviour.o KnifeBehaviour.o SwordBehaviour.o Warrior.o King.o Knight.o Queen.o Troll.o main.o
EXE=strategyPattern
RM=rm -rf

all:
	$(CXX) $(CFLAGS) $(SRC)
	$(CXX) $(OBJ) $(LFLAGS) $(EXE)

clean:
	$(RM) $(OBJ) $(EXE)
