%{
#include <stdio.h>
#include <stdlib.h>

int yylex();
void yyerror(const char *s);
%}

%token NUM

%left '+' '-'
%left '*' '/'

%%

input:
      input line
    |
    ;

line:
      expr '\n'
      {
          printf("Result = %d\n", $1);
      }
    ;

expr:
      NUM             { $$ = $1; }
    | expr '+' expr   { $$ = $1 + $3; }
    | expr '-' expr   { $$ = $1 - $3; }
    | expr '*' expr   { $$ = $1 * $3; }
    | expr '/' expr   { $$ = $1 / $3; }
    | '(' expr ')'    { $$ = $2; }
    ;

%%

void yyerror(const char *s)
{
    printf("Syntax Error\n");
}

int main()
{
    printf("Simple Calculator\n");
    printf("Enter expression:\n");
    yyparse();
    return 0;
}