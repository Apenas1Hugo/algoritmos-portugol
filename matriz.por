programa {
  funcao inicio() {
    inteiro matriz[4][4]
    inteiro l, c, resp
    l = 0
    c = 0
    resp = 0
    para (l = 0; l < 4; l++) {
      para (c = 0; c < 4; c++) {
          escreva("digite o valor na posição [", l, "][", c, "]:")
          leia(matriz[l][c])
      }
    }
    
    enquanto (resp != 5) {
      escreva("===MENU===\n")
      escreva("[1] matriz inteira\n")
      escreva("[2] diagonal principal\n")
      escreva("[3] triangulo superior\n")
      escreva("[4] triangulo inferior\n")
      escreva("[5] sair\n")
      leia(resp)
      
      se (resp == 1) {
        para (l = 0; l < 4; l++) {
          para (c = 0; c < 4; c++) {
            escreva("[", matriz[l][c], "]")
          }
          escreva("\n")
        }
      }
      senao se (resp == 2) {
        para (l = 0; l < 4; l++) {
          para (c = 0; c < 4; c++) {
            se (l == c) {
              escreva("[", matriz[l][c], "]")
            } senao {
              escreva("[ ]")
            }
          }
          escreva("\n")
        }
      }
      senao se (resp == 3) {
        para (l = 0; l < 4; l++) {
          para (c = 0; c < 4; c++) {
            se (c == l ou c < l) {
              escreva("[ ]")
            } senao {
              escreva("[", matriz[l][c], "]")
            }
          }
          escreva("\n")
        }
      }
      senao se (resp == 4) {
        para (l = 0; l < 4; l++) {
          para (c = 0; c < 4; c++) {
            se (c == l ou c > l) {
              escreva("[ ]")
            } senao {
              escreva("[", matriz[l][c], "]")
            }
          }
          escreva("\n")
        }
      }
    }
  }
}
}