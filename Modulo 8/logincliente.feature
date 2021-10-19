Feature: Login na plataforma
    Como cliente da EBAC-SHOP
    Quero fazer o login (autenticação) na plataforma
    Para visualizar meus pedidos

    Background:
        Given que esteja na pagina de login

    Scenario Outline: Autenticar multipos usuários
        When digitar <usuario>
        And <senha>
        Then exibir alerta <mensagem>

            Exemples:
            | usuario             | senha       | mensagem                      |
            | "joao@ebac.com.br"  | "teste@123" | "Login realizado com sucesso" |
            | "maria@ebac.com.br" | "23356569"  | "Usuário ou senha inválidos"  |
            | "joseebac.com.br"   | "teste@125" | "Usuário ou senha inválidos"  |
            | "joana@ebac.com.br" | vazio       | "Inserir senha."              |
            | vazio               | "teste@123" | "Inserir usuário."            |

