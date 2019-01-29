CYTHON=cython
LIBS=-lpython3.7m -lpthread -ldl -lm -lutil
LIB_PATH=-L /opt/python-3.7.2/lib/
INC_PATH=-I /opt/python-3.7.2/include/python3.7m/ 

llg: llg.c
	$(CC) -O3 -march=native -mtune=native -o $@ $(LIB_PATH) $(INC_PATH) $^ $(LIBS)

llg.c: llg.pyx
	$(CYTHON) --embed -o $@ $^

clean:
	rm llg llg.c
