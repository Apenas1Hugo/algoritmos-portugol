programa {
  funcao inicio() {
    inteiro valor, soma, div5, nulos, somapar
    valor = 0
    soma = 0
    div5 = 0
    nulos = 0
    somapar = 0
    para (inteiro c = 1; c <= 5; c++) {
      escreva("digite o ", c, "º valor:")
      leia(valor)
      soma = soma + valor
      se (valor % 5 == 0) { div5 = div5 + 1 }
      se (valor == 0) { nulos = nulos + 1 }
      se (valor % 2 == 0) { somapar = somapar + valor }
    }
    escreva("=~==~==~==~==~==~==~==~==~==~==~==~==~==~==~==~==~==~==~==~==~==~==~==~==~==~==~==~==~==~==~==~==~==~==~==~==~==~=\n")
    escreva("a soma dos valores foi:", soma, "\n")
    escreva("a media entre os valores foi:", soma / 5, "\n")
    escreva("o total de numeros divisiveis por 5 é:", div5, "\n")
    escreva("o total de numeros nulos é:", nulos, "\n")
    escreva("a soma dos numeros pares é:", somapar, "\n")
    escreva("=~==~==~==~==~==~==~==~==~==~==~==~==~==~==~==~==~==~==~==~==~==~==~==~==~==~==~==~==~==~==~==~==~==~==~==~==~==~=\n")
  }
}
