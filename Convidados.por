programa {
  funcao inicio() {
    real cafe = 0.2, agua = 0.5
    inteiro convidados, salgadinhos = 7

    escreva("Digite a quantidade de convidados entre 30 e 350 pessoas: ")
    leia(convidados)
    
    se (convidados < 30) {
      escreva("Quantidade de convidados inferior à permitida")
    }
    senao se (convidados > 350) {
      escreva("Quantidade de convidados superior à permitida")
    }
    senao {
      
      real litrosCafe = cafe * convidados
      real litrosAgua = agua * convidados
      real quantidadeSalgadinhos = salgadinhos * convidados

      
      escreva("Quantidade de café: ", litrosCafe, " Litros\n")
      escreva("Quantidade de água: ", litrosAgua, " Litros\n")
      escreva("Quantidade de salgadinhos: ", quantidadeSalgadinhos, " unidades")
    }
  }
}