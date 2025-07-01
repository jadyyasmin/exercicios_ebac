            #language: pt

            Funcionalidade: Cadastro de cliente na EBAC-SHOP

            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            Esquema do Cenário: Cadastro com dados válidos

            Dado que estou na página de cadastro da EBAC-SHOP
            Quando eu preencher os campos obrigatórios com os seguintes dados:
            | Nome   | email   | Senha  | Endereço    | Telefone    |
            | <Nome> | <email> | <senha> | <Endereço> | <Telefone>  |
            E clicar no botão "Cadastrar"
            Então deve apresentar a <mensagem> de cadastro realizado com sucesso
            E eu devo ser redirecionado para a página de finalização da compra

            Esquema do Cenário: Cadastro com e-mail inválido

            Dado que estou na página de cadastro da EBAC-SHOP
            Quando eu preencher os campos obrigatórios com os seguintes dados:
            | Nome        | E-mail   | Senha   | Endereço     | Telefone        |
            | <Nome>      | <email>  | <senha> | <Endereço>   | <Telefone> |
            E clicar no botão "Cadastrar"
            Então devo ver uma <mensagem> de erro informando "E-mail inválido"
            E o cadastro não deve ser concluído

            Esquema do Cenário: Cadastro com campos vazios

            Dado que estou na página de cadastro da EBAC-SHOP<senha>
            Quando eu deixar os seguintes campos obrigatórios vazios:
            | Nome   | E-mail | Senha  |
            | <Nome> |        |<senha> |

E clicar no botão "Cadastrar"
Então devo ver uma <mensagem> de alerta informando "Todos os campos obrigatórios devem ser preenchidos"
E o cadastro não deve ser concluído