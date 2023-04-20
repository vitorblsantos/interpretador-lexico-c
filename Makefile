mclex: interpreter.c interpreter.h tabelas.c lexer.c
	gcc -o mclex interpreter.c tabelas.c lexer.c

interpreter.c: lex.ll
	flex lex.ll

interpreter.h: lex.ll
	flex lex.ll

clean:
	rm -f mclex
	rm -f interpreter.c interpreter.h
	rm -f *.o 
