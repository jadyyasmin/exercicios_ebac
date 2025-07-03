            #language: pt

            Funcionalidade: Cadastro de cliente na EBAC-SHOP

            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            Esquema do Cenário: Cadastro com dados válidos

            Dado que estou na página de cadastro da EBAC-SHOP
            Quando eu preencher os campos obrigatórios e clicar finalizar compra 
            Então deve apresentar a <mensagem> de compra realizada com sucesso 


            Esquema do Cenário: Cadastro com e-mail inválido

            Dado que estou na página de cadastro da EBAC-SHOP
            Quando eu preencher o <email> inválido
            Então o sistema deve exibir uma <mensagem> de email invalido 
            E a compra não deve ser concluida 

            Esquema do Cenário: Cadastro com campos vazios

            Dado que estou na página de cadastro da EBAC-SHOP 
            Quando eu deixar os campos obrigatórios vazios e em finalizar compra
            Então o sistema deve exibir uma <mensagem> de alerta
            E a compra não deve ser concluida 

            Exemplos: 
            |Nome   | Sobrenome | Pais     | Endereço    | Cidade     | CEP         | Telefone       | Email                   | Mensagen                                     |
            |"Jady" | "Santos"  | "Brasil" | "Rua Olavo" | "Ribeirão" | "14022-322" | "1699730-9572" | "jadyyasmin@icloud.com" | "Compra Realizada com sucesso"               |
            |"Jady" | "Santos"  | "Brasil" | "Rua Olavo" | "Ribeirão" | "14022-322" | "1699730-9572" | "jadyyasminicloud.com"  | "Email inválido"                             |
            |"Jady" | "Santos"  | "Brasil" | "Rua Olavo" | "Ribeirão" | "14022-322" | "1699730-9572" | "jadyyasminicloudcom"   | "Email inválido"                             |     
            |"Jady" | "Santos"  | "Brasil" | "Rua Olavo" | "Ribeirão" | "14022-322" | "1699730-9572" | "@jadyyasminicloud.com" | "Email inválido"                             |      
            |"Jady" | "Santos"  | "Brasil" | "Rua Olavo" | "Ribeirão" | "14022-322" | "1699730-9572" | "jadyyasmini@cloud"     | "Email inválido"                             | 
            |""     | "Santos"  | "Brasil" | "Rua Olavo" | "Ribeirão" | "14022-322" | "1699730-9572" | "jadyyasmin@icloud.com" | "Existem campos obrigatórios não preenchidos"|                     
            |"Jady" | "Santos"  | "Brasil" | "Rua Olavo" | ""         | "14022-322" | "1699730-9572" | "jadyyasmin@icloud.com" | "Existem campos obrigatórios não preenchidos"|
            |"Jady" | ""        | "Brasil" | "Rua Olavo" | "Ribeirão" | "14022-322" | "1699730-9572" | "jadyyasmin@icloud.com" | "Existem campos obrigatórios não preenchidos"|
                    