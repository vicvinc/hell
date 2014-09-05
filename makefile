.PHONY : all clean compile

EXESH = tester

INCDIR = ./inc
INSDIR = ./bin
SRCDIR = ./src

INTFLAGS = \
        -g \
        -Wall \
        -Wextra \
        -pedantic \
        -fPIC \
        -pthread

CPPFLAGS = $(INTFLAGS) -I$(INCDIR)

SRCMAIN = main.cpp
SRCLIB = $(SRCDIR)/hell.cpp

OBJMAIN = $(SRCMAIN:.cpp=.o)
OBJLIB = $(SRCLIB:.cpp=.o)

all: compile

compile: $(OBJMAIN) $(OBJLIB)
	g++ $(CPPFLAGS) -o $(INSDIR)/$(EXESH) $(OBJMAIN) $(OBJLIB)
clean:
	rm -rf $(OBJMAIN) $(OBJLIB)
.cpp.o:
	@echo compile $<
	g++ -o $@ -c $(CPPFLAGS) $<
