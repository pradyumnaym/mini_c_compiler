lex ast.l
yacc -d ast.y
gcc lex.yy.c y.tab.c -ll -ly -o AST
lex icg.l
yacc -d icg.y
gcc lex.yy.c y.tab.c -ll -ly -o ICG

./AST < $1

./ICG < $1