Feature: Login na plataforma
    Como cliente da EBAC-SHOP
    Quero fazer o login (autenticação) na plataforma
    Para visualizar meus pedidos

    Background:
        Given que esteja na pagina de login

    Scenario: Autenticação válida
        When digitar o usuário "maria@ebac.com.br"
        And E a senha "senha@123"
        Then direcionar para tela de checkout

    Scenario: Usuário com senha inválido
        When digitar o usuário "maria@ebac.com.br"
        And E a senha "aasas@123"
        Then exibir mensagem de alerta "Usuario ou senha inválidos"

    Scenario: Usuário inexistente
        When digitar o usuário "asdasd@ebac.com.br"
        And E a senha "senha@123"
        Then exibir mensagem de alerta "Usuario ou senha inválidos"

    Scenario Outline: Autenticar multipos usuários
        When digitar <usuario>
        And a <senha>
        Then direcionar para tela de checkout

            Exemplos:
            | usuario             | senha       |
            | "joao@ebac.com.br"  | "teste@123" |
            | "maria@ebac.com.br" | "teste@124" |
            | "jose@ebac.com.br"  | "teste@125" |
            | "joana@ebac.com.br" | "teste@126" |


