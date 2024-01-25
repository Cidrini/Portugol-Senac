programa
{
	
	funcao inicio()
		{

		real valorDiaria 
		inteiro quantidadeDias
		faca 
		{
			escreva("Digite o valor da diária no hotel: ")
			leia(valorDiaria)
			escreva("Digite quantos dias de hospedagem: ")
			leia(quantidadeDias)
			
			se ( quantidadeDias <= 0 ou quantidadeDias > 30 ou valorDiaria <= 0)
				escreva("Valor inválido\n")

		} enquanto (quantidadeDias < 0 ou quantidadeDias > 30 ou valorDiaria <= 0)

			escreva("Fim do Programa")

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 166; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */