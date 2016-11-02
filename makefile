test:dirinfo.c
	gcc dirinfo.c -o test
run:test
	./test
clean:
	rm *~ *# test
