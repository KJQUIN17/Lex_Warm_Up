%{

/* Kyle Quinn
   Lex Warm Up
*/

%}
number [0-9]
var [a-zA-Z]
%%

[ \t]+                    { /* ignore */ break; }
"("                       {printf("<l_paren> "); break;}
")"                       {printf("<r_paren> "); break;}
"+"                       {printf("<plus> "); break;}
"*"                       {printf("<mult> "); break;}
"-"                       {printf("<minus> "); break;}
"/"                       {printf("<division> "); break;}
{number}*"\."?({number})+ {printf("<number> "); break;}
{var}+                    {printf("<var> "); break;}
.                         {printf("%s ", yytext); break;}

%%
main(){

yylex();

}
