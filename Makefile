all: app

app: main.o calc.o
	$(CC) -o app main.o calc.o
