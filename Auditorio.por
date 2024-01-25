programa {
    funcao inicio() {
        inteiro convidados, capacidadeAlfa = 150, cadeirasAdicionaisMax = 70
        
        escreva("Digite o número de convidados do evento: ")
        leia(convidados)
        
        se (convidados <= 0 ou convidados > 350) {
            escreva("Número de convidados inválido")
        }
        senao se (convidados <= capacidadeAlfa) {
            escreva("O auditório Alfa é o mais adequado para o evento")
        }
        senao {
            inteiro cadeirasAdicionais = convidados - capacidadeAlfa
            se (cadeirasAdicionais <= cadeirasAdicionaisMax) {
                escreva("O auditório Alfa é o mais adequado para o evento")
                escreva("\nCadeiras adicionais necessárias no auditório Alfa: ", cadeirasAdicionais)
            }
            senao {
                escreva("O auditório Beta é o mais adequado para o evento")
            }
        }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 104; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */