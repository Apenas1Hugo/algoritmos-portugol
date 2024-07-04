programa {
  funcao inicio() {
    inteiro pri, seg, soma
    pri = 0
    seg = 1
    soma = pri + seg
    para (c = 1; c <= 5; c++) {
      escreva(pri, "..")
      escreva(seg, "..")
      escreva(soma, "..")
      pri = seg + soma
      seg = soma + pri
      soma = pri + seg
    }
  }
}
