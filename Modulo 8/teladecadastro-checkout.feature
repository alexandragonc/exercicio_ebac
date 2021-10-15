Feature: Tela de cadastro
    Como cliente da EBAC-SHOP
    Quero fazer concluir meu cadastro
    Para finalizar minha compra

    Background:
        Given que esteja na página de cadastro do checkout

    Scenario: Compra finalizada com sucesso
        When preencher todos os dados obrigatorios
        Then exibir mensagem "Compra finalizada com sucesso"

    Scenario: Email inválido
        When preencher todos os dados obrigatorios
        And email "aasdinexistente.com"
        Then exibir mensagem de alerta "Email inválido"

    Scenario: Campos vazios
        When deixar todos os campos vazios
        Then exibir mensagem de alerta "Preencher os campos"

    Scenario Outline: Finalizada com sucesso
        When preencher <nome>
        And <sobrenome>
        And <pais>
        And <cidade>
        And <cep>
        And <telefone>
        And <email>
        Then exibir mensagem "Compra finalizada com sucesso"

        Examples:
            | nome  | sobrenome | pais   | cidade      | telefone    | email             |
            | Joao  | Silva     | Brasil | Recife      | 81999881144 | joao@ebac.com.br  |
            | Maria | Silva     | Brasil | Joao Pessoa | 83999881133 | maria@ebac.com.br |
            | Jose  | Silva     | Brasil | Natal       | 85999881133 | jose@ebac.com.br  |