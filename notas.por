programa {
  funcao inicio() {
    caracter gabarito[5], resp[5]
    cadeia aluno[3]
    inteiro c, c2, nota[3], media, notai
    notai = 0
    escreva("===gabarito da prova===\n")
    para (c = 0; c < 5; c++) {
      escreva("digite a resposta da ", c, "º questão:")
      leia(gabarito[c])
    }
    limpa()
    para (c = 0; c < 3; c++) {
      escreva("nome do aluno:")
      leia(aluno[c])
      para (c2 = 0; c2 < 5; c2++) {
        escreva("questão", c2, ":")
        leia(resp[c2])
        se (resp[c2] == gabarito[c2]) {
          notai = notai + 2
        }
      }
      limpa()
      nota[c] = notai
      notai = 0
    }
    escreva("===RESULTADOS===\n")
    para (c = 0; c < 3; c++) {
      escreva("nome do aluno:", aluno[c], "\n")
      escreva("nota:", nota[c], "\n")
      escreva("-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/\n")
    }
    media = (nota[0] + nota[1] + nota[2]) / 3
    escreva("media da turma:", media)
  }
}
