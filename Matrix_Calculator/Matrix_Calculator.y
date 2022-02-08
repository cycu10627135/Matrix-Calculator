%{
#include <stdio.h>
#include <string.h>
int wrong = 0;
void yyerror (const char *message);
void semerror (int col);
%}

%union {
int 	value;
int 	oper;
struct def{
	int i;
	int j;
	} mat;
}
%type <mat> matrix
%token <value> NUM
%token <oper> ADDorSUB
%token <oper> MUL
%token <oper> TR
%left ADDorSUB
%left MUL
%left TR
%%
line	:	matrix	{	printf( "Accepted\n" );
						return 0;
				}
				;
matrix	:	'[' NUM ',' NUM ']'	{ $$.i = $2; $$.j = $4; }
		|	matrix ADDorSUB matrix	{	if ( $1.i == $3.i && $1.j == $3.j ) {
											$$.i = $1.i;
											$$.j = $1.j;
										}
										else {
											semerror($2);
											return 0;	
										}
									}
		|	matrix MUL matrix		{	if ( $1.j==$3.i ) {
											$$.i = $1.i;
											$$.j = $3.j;
										}
										else {
											semerror($2);
											return 0;	
										}
								}
		|	matrix TR		{ $$.i = $1.j; $$.j = $1.i; }
		| 	'(' matrix ')'		{ $$.i = $2.i; $$.j = $2.j; }
		;

%%
void semerror(int col){
	printf("Semantic error on col %d\n", col);
}

void yyerror (const char *message)
{
    fprintf (stderr, "%s\n",message);
}

int main(int argc, char *argv[]) {
        yyparse();
        return(0);
}