
CC		= gcc
TARGET  = pause

all: share

static: pause.c
	$(CC) -static -o $(TARGET) $^

share: pause.c
	$(CC) -o $(TARGET) $^

run:
	./$(TARGET)

clean:
	rm -fr $(TARGET)

