programa {
  funcao inicio() {

    
    inteiro quantidade, horas, soma // Quantida = Número de garçons, Horas = Horas trabalhada
    real valor1 =10.50 // Valor da hora

    escreva("Quantos garçons será necessário para realizar esse trabalho? ") // Escrever quantidade de garçons 
    leia(quantidade)

    escreva("Quantas horas cada garçom irá trabalhar no dia? ") // Escrever as horas trabalhadas
    leia(horas)

    soma = quantidade * horas * valor1 // Soma da quantidade de garçons por horas trabalhadas

    escreva("Custo total para " ,quantidade, " garçons por " ,horas, " horas de trabalho é de R$" ,soma,".") // resultado
    
  }
}
