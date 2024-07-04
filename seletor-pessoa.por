programa {
  funcao inicio() {
    caracter resp, sexo
    inteiro idade, cabelo
    inteiro reqmasc, reqfem
    reqmasc = 0
    reqfem = 0
    faca {
      escreva("===seletor de pessoa===\n")
      escreva("qual sexo?:[M/F]\n")
      leia(sexo)
      escreva("qual a idade?:")
      leia(idade)
      escreva("qual a cor do cabelo?\n")
      escreva("=======================\n")
      escreva("[1] preto\n")
      escreva("[2] castanho\n")
      escreva("[3] loiro\n")
      escreva("[4] ruivo\n")
      leia(cabelo)
      escreva("=======================\n")
      se (sexo ==m e idade > 18 e cabelo == 2) {
        reqmasc = reqmasc + 1
      }
      senao se (sexo ==f e idade >= 25 e idade <= 30 e cabelo == 3) {
        reqfem = reqfem + 1
      }
      escreva("quer continuar?[S/N]\n")
      leia(resp)
    } enquanto (resp !=n)
    escreva("=======================\n")
    escreva("total de homens maiores de idade com cabelos castanhos:", reqmasc, "\n")
    escreva("total de mulheres entre 25 e 30 anos loiras:", reqfem, "\n")
    escreva("=======================\n")
  }
}
