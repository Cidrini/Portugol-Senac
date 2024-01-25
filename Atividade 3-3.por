programa
{
	
	funcao inicio()
	{
		
		cadeia vetorHospedes[7], buscaHospede
		inteiro i = 0
		inteiro opcao	
		faca
		{
		
		escreva("========== Menu ==========\n")
          escreva("1. Cadastrar\n")
          escreva("2. Pesquisar\n")
          escreva("3. Sair\n")
          escreva("==========================\n")
          escreva("Escolha uma opção: ")
		
		leia(opcao)
	
		
		escolha (opcao)
			{
					
			caso 1:
				
				se (i < 7)
				{
					limpa()
					escreva("Digite o nome do hóspede: ")
					leia(vetorHospedes[i])
					i++
					escreva("Hóspede cadastrado com sucesso!\n")
				}
				senao
				{
					limpa()
					escreva("Máximo de cadastros atingido!\n")
				}
			pare
			
			caso 2:
			escreva("Qual o nome do hóspede que deseja buscar?\n")
			leia(buscaHospede)
				
                    logico hospedeEncontrado = falso
				para (inteiro j = 0; j < 7; j++)
				{
					se(buscaHospede == vetorHospedes[j])
					{
					escreva("Hóspede encontrado!\n")
					escreva(vetorHospedes[j], " encontra-se na " , j + 1, "ª posição.\n")
					
					
                         hospedeEncontrado = verdadeiro
					
					}
				}

                    se (hospedeEncontrado == falso)
				{
					limpa()
					escreva("Hóspede não encontrado.\n")
                    }
				pare
					
			
			caso 3:

			escreva("Encerrando o programa.\n")
			pare
			
			caso contrario:
			escreva("Opção inválida. Tente novamente.\n")
			pare
			}

		} enquanto (opcao != 3)

		escreva("Você cadastrou os seguintes hóspedes:")
		para (inteiro j = 0; j < 7; j++)
		{
			escreva(vetorHospedes[j],"\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 496; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */