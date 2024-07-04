programa {
  funcao inicio() {
    cadeia times[3]
    inteiro p, s
    para (p = 0; p < 3; p++) {
      escreva("digite o nome de um time:")
      leia(times[p])
    }
    escreva("===PROXIMOS CONFRONTOS===\n")
    para (p = 0; p < 3; p++) {
      para (s = 0; s < 3; s++) {
        se (times[p] != times[s]) {
          escreva(times[p], " X ", times[s], "\n")
        }
      }
    }
  }
}
