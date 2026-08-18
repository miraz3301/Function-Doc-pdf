%{
#include <stdio.h>
%}

%%

"int"|"if"|"float"|"double"
        { printf("%s -> Keyword\n", yytext); }

[a-zA-Z_][a-zA-Z0-9_]*
        { printf("%s -> Identifier\n", yytext); }

[0-9]+(\.[0-9]+)?
        { printf("%s -> Number\n", yytext); }

"+"|"-"|"*"|"/"|"="
        { printf("%s -> Operator\n", yytext); }

";"|","|"("|")"|"{"|"}"|"["|"]"
        { printf("%s -> Separator\n", yytext); }

[ \t\n]+
        ;

.
        { printf("%s -> Lexical Error\n", yytext); }

%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter a line of C code:\n");
    yylex();
    return 0;
}
