programa {
  funcao inicio() {

    
    inteiro quantidade, horas, soma // Quantida = N�mero de gar�ons, Horas = Horas trabalhada
    real valor1 =10.50 // Valor da hora

    escreva("Quantos gar�ons ser� necess�rio para realizar esse trabalho? ") // Escrever quantidade de gar�ons 
    leia(quantidade)

    escreva("Quantas horas cada gar�om ir� trabalhar no dia? ") // Escrever as horas trabalhadas
    leia(horas)

    soma = quantidade * horas * valor1 // Soma da quantidade de gar�ons por horas trabalhadas

    escreva("Custo total para " ,quantidade, " gar�ons por " ,horas, " horas de trabalho � de R$" ,soma,".") // resultado
    
  }
}
