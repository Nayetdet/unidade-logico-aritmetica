# Unidade Lógico-Aritmética (ULA)
## Código Base
O código base refere-se a uma ULA simples, a qual foi projetada para executar as operações de adição, subtração, multiplicação, além das operações bit-a-bit AND e OR.
Tais operações são realizadas sobre dois operandos "a" e "b", ambos de N bits e com sinal.

Além disso, vale ressaltar que o projeto incorporou um parâmetro N, o qual, ao definir o numero de bits das entradas de dados, aumenta a versatilidade e a
aplicabilidade do código, uma vez que facilita sua modificação e reutilização.

### Esquema do Circuito
> ![Esquema do circuito](https://github.com/Nayetdet/unidade-logico-aritmetica/blob/main/imagens/circuito-gerado-digitaljs.png)
> <br /> Esquema do circuito gerado quando o DigitalJS é executado.

## Bancada de Testes
A bancada de teste funciona iterando por todos os possíveis valores que o circuito pode assumir e os apresenta de forma mais legível,
além de gerar a forma de onda dele.

## Output da Bancada de Testes
Para visualizar e simular o circuito, acesse o EDA Playground [aqui](https://www.edaplayground.com/x/dVMF).
<br />
Vale ressaltar que a simulação foi feita com N = 2 para que o número de casos não fique muito grande.

> | Adição                        | Subtração                     | Multiplicação                 | Bitwise AND                   | Bitwise OR                         |
> |-------------------------------|-------------------------------|-------------------------------|-------------------------------|------------------------------------|
> | 10 (-2) + 10 (-2) = 1100 (-4) | 10 (-2) - 10 (-2) = 0000 ( 0) | 10 (-2) * 10 (-2) = 0100 ( 4) | 10 (-2) & 10 (-2) = 1110 (-2) | 10 (-2) &#124; 10 (-2) = 0010 ( 2) |
> | 10 (-2) + 11 (-1) = 1101 (-3) | 10 (-2) - 11 (-1) = 1111 (-1) | 10 (-2) * 11 (-1) = 0010 ( 2) | 10 (-2) & 11 (-1) = 1110 (-2) | 10 (-2) &#124; 11 (-1) = 0011 ( 3) |
> | 10 (-2) + 00 ( 0) = 1110 (-2) | 10 (-2) - 00 ( 0) = 1110 (-2) | 10 (-2) * 00 ( 0) = 0000 ( 0) | 10 (-2) & 00 ( 0) = 1100 (-4) | 10 (-2) &#124; 00 ( 0) = 0010 ( 2) |
> | 10 (-2) + 01 ( 1) = 1111 (-1) | 10 (-2) - 01 ( 1) = 1101 (-3) | 10 (-2) * 01 ( 1) = 1110 (-2) | 10 (-2) & 01 ( 1) = 1100 (-4) | 10 (-2) &#124; 01 ( 1) = 0011 ( 3) |
> | 11 (-1) + 10 (-2) = 1101 (-3) | 11 (-1) - 10 (-2) = 0001 ( 1) | 11 (-1) * 10 (-2) = 0010 ( 2) | 11 (-1) & 10 (-2) = 1110 (-2) | 11 (-1) &#124; 10 (-2) = 0011 ( 3) |
> | 11 (-1) + 11 (-1) = 1110 (-2) | 11 (-1) - 11 (-1) = 0000 ( 0) | 11 (-1) * 11 (-1) = 0001 ( 1) | 11 (-1) & 11 (-1) = 1111 (-1) | 11 (-1) &#124; 11 (-1) = 0011 ( 3) |
> | 11 (-1) + 00 ( 0) = 1111 (-1) | 11 (-1) - 00 ( 0) = 1111 (-1) | 11 (-1) * 00 ( 0) = 0000 ( 0) | 11 (-1) & 00 ( 0) = 1100 (-4) | 11 (-1) &#124; 00 ( 0) = 0011 ( 3) |
> | 11 (-1) + 01 ( 1) = 0000 ( 0) | 11 (-1) - 01 ( 1) = 1110 (-2) | 11 (-1) * 01 ( 1) = 1111 (-1) | 11 (-1) & 01 ( 1) = 1101 (-3) | 11 (-1) &#124; 01 ( 1) = 0011 ( 3) |
> | 00 ( 0) + 10 (-2) = 1110 (-2) | 00 ( 0) - 10 (-2) = 0010 ( 2) | 00 ( 0) * 10 (-2) = 0000 ( 0) | 00 ( 0) & 10 (-2) = 1100 (-4) | 00 ( 0) &#124; 10 (-2) = 0010 ( 2) |
> | 00 ( 0) + 11 (-1) = 1111 (-1) | 00 ( 0) - 11 (-1) = 0001 ( 1) | 00 ( 0) * 11 (-1) = 0000 ( 0) | 00 ( 0) & 11 (-1) = 1100 (-4) | 00 ( 0) &#124; 11 (-1) = 0011 ( 3) |
> | 00 ( 0) + 00 ( 0) = 0000 ( 0) | 00 ( 0) - 00 ( 0) = 0000 ( 0) | 00 ( 0) * 00 ( 0) = 0000 ( 0) | 00 ( 0) & 00 ( 0) = 1100 (-4) | 00 ( 0) &#124; 00 ( 0) = 0000 ( 0) |
> | 00 ( 0) + 01 ( 1) = 0001 ( 1) | 00 ( 0) - 01 ( 1) = 1111 (-1) | 00 ( 0) * 01 ( 1) = 0000 ( 0) | 00 ( 0) & 01 ( 1) = 1100 (-4) | 00 ( 0) &#124; 01 ( 1) = 0001 ( 1) |
> | 01 ( 1) + 10 (-2) = 1111 (-1) | 01 ( 1) - 10 (-2) = 0011 ( 3) | 01 ( 1) * 10 (-2) = 1110 (-2) | 01 ( 1) & 10 (-2) = 1100 (-4) | 01 ( 1) &#124; 10 (-2) = 0011 ( 3) |
> | 01 ( 1) + 11 (-1) = 0000 ( 0) | 01 ( 1) - 11 (-1) = 0010 ( 2) | 01 ( 1) * 11 (-1) = 1111 (-1) | 01 ( 1) & 11 (-1) = 1101 (-3) | 01 ( 1) &#124; 11 (-1) = 0011 ( 3) |
> | 01 ( 1) + 00 ( 0) = 0001 ( 1) | 01 ( 1) - 00 ( 0) = 0001 ( 1) | 01 ( 1) * 00 ( 0) = 0000 ( 0) | 01 ( 1) & 00 ( 0) = 1100 (-4) | 01 ( 1) &#124; 00 ( 0) = 0001 ( 1) |
> | 01 ( 1) + 01 ( 1) = 0010 ( 2) | 01 ( 1) - 01 ( 1) = 0000 ( 0) | 01 ( 1) * 01 ( 1) = 0001 ( 1) | 01 ( 1) & 01 ( 1) = 1101 (-3) | 01 ( 1) &#124; 01 ( 1) = 0001 ( 1) |

### Forma de Onda do Circuito
> ![Forma de Onda do Circuito](https://github.com/Nayetdet/unidade-logico-aritmetica/blob/main/imagens/forma-de-onda.png)
> Forma de Onda do Circuito gerado quando a bancada de testes é executada no EDA Playground. <br />
