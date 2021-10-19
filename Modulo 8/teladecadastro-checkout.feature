Feature: Tela de cadastro
    Como cliente da EBAC-SHOP
    Quero fazer concluir meu cadastro
    Para finalizar minha compra

    Background:
        Given que esteja na página de cadastro do checkout

    Scenario Outline: Finalizada com sucesso
        When preencher <nome>
        And <sobrenome>
        And <pais>
        And <cidade>
        And <cep>
        And <telefone>
        And <email>
        Then exibir mensagem <mensagem>

        Examples:
            | nome   | sobrenome | pais        | cidade        | telefone      | email               | mensagem                    |
            | "Joao" | "Silva"   | "Brasil"    | "Recife"      | "81999881144" | "joao@ebac.com.br"  | "Finalizado com sucesso"    |
            | vazio  | "Silva"   | "Brasil"    | "Joao Pessoa" | "83999881133" | "maria@ebac.com.br" | "Preencher o nome!"         |
            | "Jose" | vazio     | "Brasil"    | "Natal"       | "85999881133" | "jose@ebac.com.br"  | "Preencher o sobrenome!"    |
            | "Jose" | "Gomes"   | vazio       | "Natal"       | "85999881133" | "jose@ebac.com.br"  | "Preencher o país!"         |
            | "Jose" | "Gomez"   | "Argentina" | vazio         | "85999881133" | "jose@ebac.com.br"  | "Preencher a cidade!"       |
            | "Jose" | "Gomez"   | "Argentina" | "Rosario"     | vazio         | "jose@ebac.com.br"  | "Preencher a telefone!"     |
            | "Jose" | "Gomez"   | "Argentina" | "Rosario"     | "98956655102" | vazio               | "Preencher o email!"        |
            | vazio  | vazio     | vazio       | vazio         | vazio         | vazio               | "Preencher todos os campos" |
            | "Jose" | "Gomez"   | "Argentina" | "Rosario"     | "15155565326" | "joebac.com.br"     | "Email inválido"            |