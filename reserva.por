programa {
  funcao inicio() {
    cadeia fila[10] = {"b1", "b2", "b3", "b4", "b5", "b6", "b7", "b8", "b9", "b10"}, reserva
    caracter resp
    inteiro c
    resp ='a'
    enquanto (resp !='n') {
      para (c = 0; c < 10; c++) {
        escreva("[", fila[c], "]")
      }
      escreva("\n")
      escreva("qual lugar voce quer reservar?: ")
      leia(reserva)
      logico encontrado = falso
      para (c = 0; c < 10; c++) {
        se (fila[c] == reserva) {
          escreva("reservado!!!\n")
          fila[c] = "xxx"
          encontrado = verdadeiro
        }
      }
      se (nao encontrado) {
        escreva("Este lugar já está reservado!\n")
      }
      escreva("\n")
      escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
      escreva("quer reservar mais?[S/N]: ")
      leia(resp)
    }
  }
}
