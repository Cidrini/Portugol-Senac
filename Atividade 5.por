programa
{

		
		const real VALOR_DIARIA = 100.0
		const inteiro MAX_HOSPEDES = 10
		
		inteiro numeroHospedes = 0
		cadeia nomes[MAX_HOSPEDES] 
		inteiro cpfs[MAX_HOSPEDES] 
		inteiro diasHospedagem[MAX_HOSPEDES]
		real despesasTotais[MAX_HOSPEDES]
		inteiro indiceHospede 
		real valorAreaDeLazer[MAX_HOSPEDES] 

		
		funcao limparVetores()
		{	
			para(inteiro i = 0; i < MAX_HOSPEDES; i++)
			{
				cpfs[i] = 0
				diasHospedagem[i] = 0
				despesasTotais[i] = 0.0
				nomes[i] = ""
			}
		}

	
	funcao cadastrarHospede()
	{
		se (numeroHospedes < MAX_HOSPEDES)
		{
			
			
			escreva("Cadastro de Hospede:\n")
			escreva("Nome: ")
			leia(nomes[numeroHospedes])
			escreva("CPF: ")
			leia(cpfs[numeroHospedes])
			escreva("Quantidade de dias de hospedagem: ")
			leia(diasHospedagem[numeroHospedes])
			
			despesasTotais[numeroHospedes] = diasHospedagem[numeroHospedes] * VALOR_DIARIA
			
			escreva("\nInformações do Hospede\n")
			escreva("Nome: ", nomes[numeroHospedes], "\n")
			escreva("CPF: ", cpfs[numeroHospedes], "\n")
			escreva("Dias de hospedagem: ", diasHospedagem[numeroHospedes], "\n")
			escreva("Despesas totais: R$", despesasTotais[numeroHospedes], "\n")
			
			caracter resposta
			escreva("\nAs informações estão corretas? (S/N): ")
			leia(resposta)
			se (resposta == 'S' ou resposta == 's')
			{	
				escreva("\nCadastro realizado com sucesso!\n")
				numeroHospedes = numeroHospedes + 1
			}
			se (resposta == 'N' ou resposta == 'n')
			{
				cpfs[numeroHospedes] = 0
				diasHospedagem[numeroHospedes] = 0
				despesasTotais[numeroHospedes] = 0.0
				nomes[numeroHospedes] = "."
				
				escreva("\nPor favor, corrija as informações.\n")
			}
		}
		senao
		{
			escreva("Desculpe, os cadastros estão lotados.\n")
		}
	}

	funcao exibirHospedes()
	{
		
		
		se (numeroHospedes == 0)
		{
			escreva("Nenhum hóspede cadastrado.\n")
		}
		senao
		{
			escreva(" Hospedes Cadastrados \n")
			
			para (inteiro i = 0; i < numeroHospedes; i++)
			{
				escreva("Hospede ", i + 1, ":\n")
				escreva("Nome: ", nomes[i], "\n")
				escreva("CPF: ", cpfs[i], "\n")
				escreva("Dias de hospedagem: ", diasHospedagem[i], "\n")
				escreva("Despesas totais: R$", despesasTotais[i], "\n\n")
			}
		}
	}
	
	funcao exibirQuartos()
	{
		
		escreva("Status dos Quartos\n")
		
		
		para (inteiro i = 0; i < 10; i++)
		{
			escreva("Quarto ", i + 1, ": ")
			
			
			se (nomes[i] != "")
			{
				escreva("Ocupado por ", nomes[i], " por ", diasHospedagem[i], " dias.\n")
			}
			senao
			{
				escreva("Livre.\n")
			}
		}
		
		escreva("\n")
	}

	funcao atribuirHospedeAQuarto()
	{
		
		exibirHospedes()
		
		inteiro numeroQuarto, numeroHospede
		
		escreva("Informe o número do quarto desejado para a alocação: ")
		leia(numeroQuarto)
		
		se (nomes[numeroQuarto - 1] != "")
		{
			escreva("Quarto já está ocupado. Escolha outro quarto.\n")
		}
		
		escreva("Informe o número do hóspede: ")
		leia(numeroHospede)
		
		se (numeroHospede < 1 ou numeroHospede > numeroHospedes)
		{
			escreva("Hóspede não existe.\n")
		}
		
		nomes[numeroQuarto - 1] = nomes[numeroHospede - 1]
		
		escreva("Hóspede atribuído ao quarto com sucesso!\n")
		
	}

	funcao reservarAreasLazer()
	{
		caracter opcaoArea
		
		
		escreva("Digite o índice do hóspede: ")
		leia(indiceHospede)
		
		
		se (indiceHospede < 1 ou indiceHospede > 10)
		{
			escreva("Índice de hóspede inválido.\n")
		}
		
		escreva("Escolha a área desejada (A - Academia, S - Salão de Festas, R - Restaurante): ")
		leia(opcaoArea)
		
		escolha (opcaoArea)
		{
			caso 'A':
			valorAreaDeLazer[indiceHospede] = valorAreaDeLazer[indiceHospede] + 20
			escreva("Área de Academia reservada com sucesso.\n")
			pare
			
			caso 'S':
			valorAreaDeLazer[indiceHospede] = valorAreaDeLazer[indiceHospede] + 50
			escreva("Área de Salão de Festas reservada com sucesso.\n")
			pare
			
			caso 'R':
			valorAreaDeLazer[indiceHospede] = valorAreaDeLazer[indiceHospede] + 35
			escreva("Área de Restaurante reservada com sucesso.\n")
			pare
			
			caso contrario:
			escreva("Opção de área inválida.\n")
		}
		
		escreva("Valor total atualizado: R$", valorAreaDeLazer[indiceHospede], "\n")
	}
	
	funcao real calcularTotalGastos(inteiro indiceHospede)
	{
		
		real totalGastos = despesasTotais[indiceHospede] + valorAreaDeLazer[indiceHospede]
		
		retorne totalGastos
	}
	
	funcao liberarQuarto(cadeia nomeHospede, cadeia nomesHospedes[])
	{
		
		para (inteiro i = 0; i <10; i++)
		{
			se (nomesHospedes[i] == nomeHospede)
			{
				
				nomesHospedes[i] = ""
				escreva("Quarto liberado com sucesso.\n")
				pare
			}
		}
	}
	
	funcao inicio()
	{
		limparVetores()
		inteiro opcao 
		faca
		{	
			escreva("\n========== Menu ==========\n")
			escreva("1. Cadastrar Hospedes\n")
			escreva("2. Exibir Hospedes Cadastrados\n")
			escreva("3. Exibir Quartos\n")
			escreva("4. Atribuir Hospede a um quarto\n")
			escreva("5. Reservar Área de Lazer\n")
			escreva("6. Calcular Total a Pagar\n")
			escreva("0. Sair\n")
			escreva("==========================\n")
			escreva("Escolha uma opção: ")
			leia(opcao)
			
			escolha (opcao)
			{
				caso 1:
					cadastrarHospede()
				pare
				caso 2:
					exibirHospedes()
				pare
				caso 3:
					exibirQuartos()
				pare
				caso 4:
					atribuirHospedeAQuarto()
					exibirQuartos()
				pare
				caso 5:
					reservarAreasLazer()
				pare
				caso 6:
					
					escreva("Qual hóspede você gostaria de calcular o total a pagar?\n")
					leia(indiceHospede)
					
					escreva("O valor gasto total foi de: R$", calcularTotalGastos(indiceHospede))
					
				pare
				caso 0:
					escreva("Obrigado por  usar nosso sistema. Até logo!\n")
				pare
				caso contrario:
					escreva("Opção inválida. Tente novamente.\n")
			}
		} enquanto (opcao != 0)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 14; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */