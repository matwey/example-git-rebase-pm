all: app

app: main.o calc.o mod.o
	$(CC) -o app main.o calc.o mod.o
