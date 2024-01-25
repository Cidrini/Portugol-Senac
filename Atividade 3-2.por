programa
{
	
	 caracter vetorQuarto[10]

    funcao vazio quartosLivres()
    {
        para (inteiro i = 0; i < 10; i++)
        {
            vetorQuarto[i] = 'L'
        }
    }

    funcao vazio exibirStatus()
    {
        para (inteiro i = 0; i < 10; i++)
        {
            se (vetorQuarto[i] == 'L')
                escreva("O ", i + 1, "º quarto está livre.\n")

            se (vetorQuarto[i] == 'O')
                escreva("O ", i + 1, "º quarto está ocupado.\n")
        }
    }
       funcao vazio exibirMenu()
    {
        escreva("========== Menu ==========\n")
        escreva("1. Ocupação dos quartos\n")
        escreva("2. Status dos quartos\n")
        escreva("==========================\n")
        escreva("Escolha uma opção: ")
    }

    funcao inicio()
    {
    	
    	caracter opcao = 'S', ocupacao
    	inteiro menu = 0
	quartosLivres()

     enquanto (opcao != 'N')
     {
     	  exibirMenu()
            leia(menu)
            

            escolha (menu)
            {
                caso 1:
                    escreva("Qual quarto você quer alterar? ")
                    inteiro i 
                    leia(i)
                    i = i - 1

                    escreva("O ", i + 1,"º quarto está livre ou ocupado? (USE L/O) ")
				leia(ocupacao)   
				se(vetorQuarto[i] == 'L' e ocupacao == 'L')
				{
					escreva("Quarto já está vazio.\n")
				}
				senao se(vetorQuarto[i] == 'L' e ocupacao == 'O')
				{
					escreva("O quarto foi ocupado.\n")
					vetorQuarto[i] = 'O'
				}
				senao se(vetorQuarto[i] == 'O' e ocupacao == 'L')
				{
					escreva("O quarto foi liberado.\n")
					vetorQuarto[i] = 'L'
				}
				senao se(vetorQuarto[i] == 'O' e ocupacao == 'O')
				{
					escreva("O quarto já está ocupado\n.")
				}
				senao
				{
					escreva("Opção Inválida, Tente novamente\n.")
				}
				escreva("Deseja continuar? (USE S/N)")
				leia(opcao)
                pare

                caso 2:
                    exibirStatus()
                pare

                caso contrario:
                    escreva("Opção inválida. Tente novamente.\n")
                pare
            }
        }
	
	exibirStatus()
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2004; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */