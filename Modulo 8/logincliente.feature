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
        When digitar o usuário "asdasdebac.com.br"
        And E a senha "senha@123"
        Then exibir mensagem de alerta "Usuario ou senha inválidos"

    Scenario Outline: Autenticar multipos usuários
        When digitar <usuario>
        And a <senha>
        Then <mensagem>

            Exemples:
            | usuario             | senha       | mensagem                     |
            | "joao@ebac.com.br"  | "teste@123" | "Usuario e senha válidos"    |
            | "maria@ebac.com.br" | "23356569"  | "Usuário ou senha inválidos" |
            | "joseebac.com.br"   | "teste@125" | "Usuário ou senha inválidos" |
            | "joana@ebac.com.br" | vazio       | "Inserir senha."             |
            | vazio               | "teste@123" | "Inserir usuário."           |

