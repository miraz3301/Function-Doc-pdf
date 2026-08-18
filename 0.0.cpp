#include<bits/stdc++.h>
#define ll long long int
#define endl '\n'
using namespace std;
bool is_keyword(string s)
{
    vector<string>arr={"int","if","float","double"};
    for(auto x:arr)if(s==x)return true;
    return false;
}
bool is_operator(char ch)
{
    vector<char>arr={'+','-','*','/','='};
    for(auto x:arr)if(ch==x)return true;
    return false;
}
bool is_separator(char ch)
{
    vector<char>arr={';',',','(','{','[',']','}',')'};
    for(auto x:arr)if(ch==x)return true;
    return false;
}

int main()
{
    cout<<"Enter a line of C code:\n";
    string code,token;
    getline(cin,code);
    
    ll i=0;
    while(i<code.size())
    {
        if(code[i]==' ' or code[i]=='\n' or code[i]=='\n')i++;
        else if(isalpha(code[i]) or code[i]=='_')
        {
            string token="";
            while(i<code.size() and (isalnum(code[i]) or code[i]=='_'))token+=code[i++];
            
            if(is_keyword(token))cout<<token<<" -> Keyword\n";
            else cout<<token<<" -> Identifier\n";
        }
        else if(isdigit(code[i]))
        {
            string token="";
            while(i<code.size() and (isdigit(code[i]) or code[i]=='.'))token+=code[i++];

            cout<<token<<" -> Number\n";
        }
        else if(is_operator(code[i])) cout<<code[i++]<<" -> Operator\n";
        else if(is_separator(code[i])) cout<<code[i++]<<" -> Separator\n";
        else cout<<code[i++]<<" -> Lexical Error\n";
    }
}
