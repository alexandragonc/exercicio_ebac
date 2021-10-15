Feature: Configurar produto
    Como cliente da EBAC-SHOP
    Quero configurar meu produto de acordo com meu tamanho e gosto
    E escolher a quantidade
    Para depois inserir no carrinho

    Background:
        Given esteja na página do produto

    Scenario: Produto inserido com sucesso
        When escolher a cor laranja e tamanho L
        And quantidade 10
        Then exibir mensagem "produto inserido no carrinho"

    Scenario: Produto indisponivel
        When escolher a cor laranja e tamanho P
        And quantidade 10
        Then exibir mensagem "produto indisponivel"

    Scenario: Quantidade não permitida
        When escolher a cor laranja e tamanho L
        And quantidade 11
        Then exibir mensagem "Quantidade não permitida"

    Scenario: Estado original
        When clicar no botão limpar
        Then o produto volta para as configurações iniciais

    Scenario Outline: Produto inserido com sucesso
        When escolher a cor <cor> 
        And tamanho <tamanho>
        And quantidade <quantidade>
            | quantidade |
            | 1          |
            | 2          |
            | 3          |
            | 4          |
            | 5          |
            | 6          |
            | 7          |
            | 8          |
            | 9          |
            | 10         |
        Then exibir mensagem "produto inserido ao carrinho"

            Exemples:
            | cor    | tamanho |
            | Blue   | XS      |
            | Blue   | S       |
            | Blue   | M       |
            | Blue   | L       |
            | Blue   | XL      |
            | Orange | XS      |
            | Orange | S       |
            | Orange | M       |
            | Orange | L       |
            | Orange | XL      |
            | Red    | XS      |
            | Red    | S       |
            | Red    | M       |
            | Red    | L       |
            | Red    | XL      |
