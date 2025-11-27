# Data Structures and Algorithm Analysis in C++

Sugestão de metodologia:

- no início do encontro, a pessoa responsável fala quais tópicos do capítulo gostaria de discutir.
- os participantes sugerem tópicos adicionais
- os tópicos são compilados em uma listagem como `[]`
- conforme os tópicos são cobertos, vão sendo marcados como done `[x]`
- novos tópicos que surgirem são adicionados na lista como undone `[]`

Assim no final de cada encontro temos um registro do que foi discutido.

## 1º encontro: 26/11/2025

**Chapter 1 Programming: A General Overview**

### Tópicos do encontro:

- [x] Método indutivo e formas de provar hipóteses/teoremas
    - [x] Conversa sobre funções puras e impuras
    - [x] Conversa sobre exemplos `bad` e `printOut`
- [x] Definição de recursividade
- [] Definição de pointers, Lvalues/Rvalues
- [x] Sintaxe para Classes e exemplo (IntCell)
- [x] Problema da seleção
	- [x] análise da questão e debate
	- [] implementação
- [] Problema da busca de palavras (wordsearch)
    - [] análise da questão e debate
    - [] Roast da implementação do guilherme

### Snippets:

    # bad.py

    def bad(n: int):
        print(f"n = {n}")
        if n == 0:
            return 0
        else:
            return bad(n / 3 + 1) + n - 1
                

    bad(6)

    ------------

    /**
    * classes.cpp
    * A class for simulating an integer memory cell.
    */

    #include <iostream>

    class IntCell
    {
        public:
        explicit IntCell( int initialValue = 0 )
        : storedValue{ initialValue } { }
        int read( ) const
        { return storedValue; }
        void write( int x )
        { storedValue = x; }

        private:
        int storedValue;
    };


    int main() {
        IntCell cell{3.5}; // throws error
        IntCell cell2 = IntCell(2.5);
        std::cout << cell.read();
        std::cout << cell2.read();
    }

    ------------

    # loop.py

    def loop(x):
        if x == 5:
            return loop(5)

        return loop(x-1)

    loop(10)

    ------------

    /**
    * printout.cpp
    **/

    #include <iostream>

    void printOut( int n );
    int main() {
        printOut(11);
    }

    void printOut( int n )
    {
        if ( n >= 10 ) {
            printOut( n / 10 );
        }
        std::cout << n % 10;
    }

    ------------

    # printout.py

    def printOut(n: int):
        if n >= 10:
            printOut( n / 10)
        print( n % 10 )


    printOut(11)

    ------------

    # vector.py

    class Vector():

        def __init__(self, v):
            self.v = v

        def __add__(self, other):
            return self.v + other.v

        def add(self, other):
            return self.v + other.v


    v1 = Vector(1)
    v2 = Vector(2)

    print(v1 + v2)

    print(v1.add(v2))


### Questões sugeridas:

- <https://leetcode.com/problems/word-search>
- [selection problem](https://leetcode.com/problems/kth-largest-element-in-an-array/description/)
