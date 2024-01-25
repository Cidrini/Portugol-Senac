programa
{
	
	funcao inicio()
	{
		real valorDiaria, totalValor = 0.0
		inteiro gratuidades = 0, meiasHospedagens = 0 
		caracter continuar
		continuar = 'S'
		

		escreva("Informe o valor padrão da diária: ")
		leia(valorDiaria)
		

		enquanto (continuar != 'N')
		{
		    cadeia nomeHospede 
		    inteiro idadeHospede
		

		    escreva("Informe o nome do hóspede: ")
		    leia(nomeHospede)
		

		    escreva("Informe a idade do hóspede: ")
		    leia(idadeHospede)
		

		    se (idadeHospede <= 4)
		    {

		        escreva("(", nomeHospede, ") possui gratuidade\n")
		        gratuidades = gratuidades + 1
		    }
		    senao se (idadeHospede >= 80)
		    {

		        escreva("(", nomeHospede, ") paga meia\n")
		        meiasHospedagens = meiasHospedagens + 1
		        totalValor = totalValor + (valorDiaria / 2)
		    }
		    senao
		    {

		        escreva("(", nomeHospede, ") paga valor integral\n")
		        totalValor = totalValor + valorDiaria
		    }
		

		    escreva("Deseja continuar informando dados? (S/N): ")
		    leia(continuar)
		}
		

		escreva("\nResumo:")
		escreva("\n- Não pagantes: ", gratuidades)
		escreva("\n- Meias: ", meiasHospedagens)
		escreva("\n- Total: R$ ", totalValor)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 297; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */