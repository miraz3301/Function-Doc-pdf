#include<stdio.h>
#include<string.h>
#include<ctype.h>
bool is_keyword(char word[])
{
    char keyword[8][10]={
        "int","float","char","if","void",
        "when","for","return"
    };
    for(int i=0;i<8;i++)
    {
        if(!strcmp(word,keyword[i]))
        {
            return 1;
        }
    }
    return 0;
}
bool is_operator(char ch)
{
    char op[8]={'=','+','-','*','/','&','|','^'};
    for(int i=0;i<8;i++)
    {
        if(ch==op[i])
        {
            return 1;
        }
    }
    return 0;
}
bool is_separator(char ch)
{
    char sep[8]={',',';','(',')','{','}','[',']'};
    for(int i=0;i<8;i++)
    {
        if(ch==sep[i])
        {
            return 1;
        }
    }
    return 0;
}

int main()
{
    char code[200];
    char token[200];
    int i=0,j=0;
    printf("enter a line of c code:\n");
    fgets(code,sizeof(code),stdin);
    while(code[i]!='\0')
    {
        if(code[i]==' ' || code[i]=='\n' || code[i]=='\t')i++;
        else if(isalpha(code[i]) || code[i]=='_')
        {
            j=0;
            while(isalnum(code[i]) || code[i]=='_')
            {
                token[j]=code[i];
                j++;
                i++;
            }
            token[j]='\0';
            if(is_keyword(token))
            {
                printf("%s -> keyword\n",token);
            }
            else printf("%s -> Identifier\n",token);

        }
        else if(isdigit(code[i]))
        {
            j=0;
            while(isdigit(code[i]) || code[i]=='.')
            {
                token[j]=code[i];
                j++;
                i++;
            }
            token[j]='\0';
            printf("%s -> Number\n",token);

        }
        else if(is_operator(code[i]))
        {
            printf("%c -> Operator\n",code[i]);
            i++;
        }
        else if(is_separator(code[i]))
        {
            printf("%c -> Separator\n",code[i]);
            i++;
        }
        else
        {
            printf("%c -> lexical error / invalid token\n",code[i]);
            i++;
        }



    }
}
