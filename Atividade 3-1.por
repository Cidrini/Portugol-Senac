programa
{
	
	funcao inicio()
	{
		inteiro vetorMesa[4]
		real valorMesa
		const real cortesia = 30.99

		para (inteiro i = 0; i < 4; i++)
		{
			escreva("Qual o valor da mesa ", i +1, "? : ")
			leia(vetorMesa[i])
		}
		para (inteiro i = 0; i < 4; i++)
		{
			real diferenca = vetorMesa[i] - cortesia

			se(diferenca <= 0)
			{
			escreva("Mesa nº ", i +1, ": Nada a pagar.\n")
			}
			senao
			{
				escreva("Mesa nº ", i +1, ": precisa pagar: R$: ", diferenca, "\n")
			}
			}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 488; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */