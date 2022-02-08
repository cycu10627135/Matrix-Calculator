%{
#include "Matrix_Calculator.tab.h"
int col = 0;
%}
%%
\n		 {}
[\t ]+	 { col += yyleng; }
[0-9]+	 { col += yyleng; yylval.value = atoi( yytext ); return( NUM ); }
"+"|"-" 	{ col += yyleng; yylval.oper = col; return ADDorSUB; }
"*"		{ col += yyleng; yylval.oper = col; return MUL; }
"("|")"|"["|"]"|","		{ col += yyleng; return( yytext[0] ); }
"^T"		{ col += yyleng; yylval.oper = col; return TR; }
.		 { return(yytext[0]); }
%%