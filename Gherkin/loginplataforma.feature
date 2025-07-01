#language: pt 

Funcionalidade: Autenticação de usuário na EBAC-SHOP
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma
Para visualizar meus pedidos


 Cenário: Login com dados válidos

Dado que estou na página de login da EBAC-SHOP
Quando eu inserir um e-mail válido
E inserir uma senha válida
E clicar no botão "Login"
Então devo ser redirecionado para a tela de checkout

Cenário: Login com e-mail ou senha inválidos

Dado que estou na página de login da EBAC-SHOP
Quando eu inserir um e-mail inválido ou uma senha inválida
E clicar no botão "Login"
Então devo ver uma mensagem de alerta com o texto "Usuário ou senha inválidos"

Cenário: Lembrar login do usuário

Dado que estou na página de login da EBAC-SHOP
E eu marco a opção "Remember me"
Quando eu inserir um e-mail válido
E inserir uma senha válida
E clicar no botão "Login"
Então na próxima vez que eu acessar a página de login
Então meu e-mail deve estar preenchido automaticamente no campo de e-mail