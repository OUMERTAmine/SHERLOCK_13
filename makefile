CC = gcc
CFLAGS = -Wall -g


SDL_CFLAGS = $(shell sdl2-config --cflags)
SDL_LIBS = $(shell sdl2-config --libs) -lSDL2_image -lSDL2_ttf -lpthread


OBJS_SERVER = server.o
OBJS_CLIENT = sh13.o

# Executables
EXEC_SERVER = server
EXEC_CLIENT = sh13

all: $(EXEC_SERVER) $(EXEC_CLIENT)

$(EXEC_SERVER): $(OBJS_SERVER)
	$(CC) $(CFLAGS) -o $(EXEC_SERVER) $(OBJS_SERVER)

$(EXEC_CLIENT): $(OBJS_CLIENT)
	$(CC) $(CFLAGS) $(SDL_CFLAGS) -o $(EXEC_CLIENT) $(OBJS_CLIENT) $(SDL_LIBS)

%.o: %.c
	$(CC) $(CFLAGS) $(SDL_CFLAGS) -c $< -o $@

clean:
	rm -f *.o $(EXEC_SERVER) $(EXEC_CLIENT)

