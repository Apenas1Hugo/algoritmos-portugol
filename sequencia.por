programa {
  funcao inicio() {
    inteiro resp
    faca{
      escreva("======MENU======\n")
      escreva("[1] de 1 a 10\n")
      escreva("[2] de 10 a 1\n")
      escreva("[3] SAIR\n")
      escreva("================\n")
      leia(resp)
      se (resp == 1) {
        escreva("1,2,3,4,5,6,7,8,9,10\n")
      }
      senao se (resp == 2) {
        escreva("10,9,8,7,6,5,4,3,2,1\n")
      }
    }enquanto(resp != 3 )
  }
}