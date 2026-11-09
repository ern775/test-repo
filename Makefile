PREFIX ?= /usr/local

hello: hello.c
	$(CC) -o hello hello.c

install: hello
	install -D -m755 hello $(DESTDIR)$(PREFIX)/bin/hello

clean:
	rm -f hello
