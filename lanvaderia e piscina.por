programa
{
	
	funcao inicio()
	{
		caracter local, exame, acompanhante
		inteiro roupasKg, idade
		real valorKg

		escreva("Qual função você quer acessar?\n")
		escreva("Escreva L para lavanderia ou P para piscina: ")
		leia(local)

		escolha(local)
		{
			caso 'L':
			escreva("Informe a quantidade de kg de roupa: ")
			leia(roupasKg)

			se(roupasKg > 10)
			valorKg = roupasKg * 15

			senao valorKg = roupasKg * 20
			escreva("O custo será de R$", valorKg)

			pare

			caso 'P':
			escreva("Informe sua idade: ")
			leia(idade)
			escreva("Está acompanhado? S ou N?: ")
			leia(acompanhante)
			se(idade < 18 e acompanhante == 'N')
			{
				escreva("Você precisa de um acompanhante maior de idade.")
				pare
			}
			escreva("Seu exame está em dia? S ou N? ")
			leia(exame)

			se ((idade >= 18 e exame == 'S') ou (idade < 18 e acompanhante == 'S' e exame == 'S'))
			{
				escreva("Você pode acessar a piscina.")
				pare
			}
			senao se ((idade >= 18 e exame == 'N') ou (idade < 18 e acompanhante == 'S' e exame == 'N'))
			escreva("Faça seu exame antes de entrar na piscina.")
			senao
			escreva("Opção inválida.")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1082; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */