programa
{

	
	funcao inicio()
	{
		inteiro hospedes, numeroQuarto
		real valorDiaria
		real maiorDiaria = 0.0 
		real menorDiaria = 9999999.9 
		real totalDiarias = 0.0 

		escreva("Informe o número de hóspedes: ")
		leia(hospedes)
		
			para(inteiro i = 1; i <= hospedes; i++)
		{
			escreva("Informe o quarto do ", i, "º hóspede: ")
			leia(numeroQuarto)
			escreva("Informe o valor da diária do ", i, "º hóspede: ")
			leia(valorDiaria)

			
			totalDiarias = totalDiarias + valorDiaria


			se(valorDiaria < menorDiaria)
			{
				menorDiaria = valorDiaria
			}

			se(valorDiaria > maiorDiaria)
			{
				maiorDiaria = valorDiaria
			}

			escreva("Quarto ", numeroQuarto, ": R$ ", valorDiaria, "\n")
		}

		escreva("Total de diárias: R$ ", totalDiarias, "\n")
		escreva("Menor diária: R$ ", menorDiaria, "\n")
		escreva("Maior diária: R$ ", maiorDiaria, "\n")
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 111; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */