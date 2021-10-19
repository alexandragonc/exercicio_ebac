Feature: Configurar produto
    Como cliente da EBAC-SHOP
    Quero configurar meu produto de acordo com meu tamanho e gosto
    E escolher a quantidade
    Para depois inserir no carrinho

    Background:
        Given esteja na página do produto

    Scenario: Estado original
        When clicar no botão limpar
        Then o produto volta para as configurações iniciais

    Scenario Outline: Produto inserido com sucesso
        When escolher a cor <cor>
        And tamanho <tamanho>
        And quantidade <quantidade>
        Then exibir mensagem <mensagem>

            Exemples:
            | cor      | tamanho | quantidade | mensagem                       |
            | "Blue"   | "XS"    | "10"       | "Produto inserido com sucesso" |
            | vazio    | "S"     | "9"        | "Escolha a cor!"               |
            | "Red"    | vazio   | "3"        | "Escolha o tamanho!"           |
            | "Orange" | "L "    | "11"       | "Escolha até 10 produtos!"     |
            | "Red"    | "xs"    | vazio      | "Escolha a quantidade!"        |
            | "Yellow" | "xs"    | "7"        | "Produto indisponivel."        |