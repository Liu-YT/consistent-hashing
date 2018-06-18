SRCDIR = ./src
OBJDIR = ./bin

out : main.o conHash.o 
	g++ -g -o out conHash.o main.o -std=c++11
	@mv ./*.o ./bin

main.o : ./src/main.cpp ./src/conHash.h 
	g++ -g -c ./src/main.cpp ./src/conHash.h -std=c++11

conHash.o : ./src/conHash.cpp ./src/conHash.h
	g++ -g -c ./src/conHash.cpp -std=c++11

run :
	@./out

run2 : 
	@./out > out.txt

clean :
	@rm out ./bin/main.o ./bin/conHash.o ./out.txt 