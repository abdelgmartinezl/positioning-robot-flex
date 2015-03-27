%{
int mapa[14][14];
int i=6,j=6;
int posx=0,posy=0;
%}

%option noyywrap

%%
"NORTE"	{ printf("-> N "); i--; mapa[i][j]=1; posy++; }
"SUR"	{ printf("-> S "); i++; mapa[i][j]=1; posy--; }
"ESTE"	{ printf("-> E "); j++; mapa[i][j]=1; posx++; }
"OESTE"	{ printf("-> O "); j--; mapa[i][j]=1; posx--; }
" "
"SALIR" return 0;

%%
int main (void) {
	mapa[i][j] = 1;
	printf("INTRODUZCA LAS DIRECCIONES: ");
	yylex ();
	int ic=0,jc=0;
	printf("\n-----TRAYECTORIA-----\n");	
	for(ic = 0 ; ic < 14 ; ic++){
		for (jc = 0 ; jc < 14 ; jc++){
			printf("%d", mapa[ic][jc]);
		}
		printf("\n");
	}
	printf("\nPOSICION -> [%d,%d]\n", posx, posy);
	return 0;
}
