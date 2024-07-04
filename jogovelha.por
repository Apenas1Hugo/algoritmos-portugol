programa {
  caracter jogov[3][3] = {{'1','2','3'}, {'4','5','6'}, {'7','8','9'}}
  logico vitoria = falso

  funcao exibir() {
    inteiro l, c
    para(l = 0; l < 3; l++) {
      para(c = 0; c < 3; c++) {
        escreva("[", jogov[l][c], "]")
      }
      escreva("\n")
    }
  }

  funcao verificar_vitoria() {
    inteiro l, c
    // Verificar linhas
    para(l = 0; l < 3; l++) {
      se (jogov[l][0] == jogov[l][1] e jogov[l][1] == jogov[l][2]) {
        vitoria = verdadeiro
        retorne
      }
    }
    // Verificar colunas
    para(c = 0; c < 3; c++) {
      se (jogov[0][c] == jogov[1][c] e jogov[1][c] == jogov[2][c]) {
        vitoria = verdadeiro
        retorne
      }
    }
    // Verificar diagonais
    se (jogov[0][0] == jogov[1][1] e jogov[1][1] == jogov[2][2]) {
      vitoria = verdadeiro
      retorne
    }
    se (jogov[0][2] == jogov[1][1] e jogov[1][1] == jogov[2][0]) {
      vitoria = verdadeiro
      retorne
    }
  }

  funcao jogadorx() {
    caracter posx
    inteiro l, c
    logico encontrado
    
    enquanto(verdadeiro) {
      escreva("Em qual posição você quer jogar o [X]?: ")
      leia(posx)
      encontrado = falso
      
      para(l = 0; l < 3; l++) {
        para(c = 0; c < 3; c++) {
          se (jogov[l][c] == posx) {
            jogov[l][c] = 'X'
            encontrado = verdadeiro
          }
        }
      }
      
      se (encontrado) {
        exibir()
        verificar_vitoria()
        se (vitoria) {
          escreva("Jogador X venceu!\n")
          interrompa
        }
        jogadorO()
      } senao {
        escreva("Posição inválida. Tente novamente.\n")
      }
    }
  }

  funcao jogadorO() {
    caracter posO
    inteiro l, c
    logico encontrado
    
    enquanto(verdadeiro) {
      escreva("Em qual posição você quer jogar o [O]?: ")
      leia(posO)
      encontrado = falso
      
      para(l = 0; l < 3; l++) {
        para(c = 0; c < 3; c++) {
          se (jogov[l][c] == posO) {
            jogov[l][c] = 'O'
            encontrado = verdadeiro
          }
        }
      }
      
      se (encontrado) {
        exibir()
        verificar_vitoria()
        se (vitoria) {
          escreva("Jogador O venceu!\n")
          interrompa
        }
        jogadorx()
      } senao {
        escreva("Posição inválida. Tente novamente.\n")
      }
    }
  }

  funcao inicio() {
    exibir()
    jogadorx()
    jogadorO()
  }
}