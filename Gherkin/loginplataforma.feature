#language: pt 

Funcionalidade: Autenticação de usuário na EBAC-SHOP
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma
Para visualizar meus pedidos


Cenário: Login com dados válidos

Dado que estou na página de login da EBAC-SHOP
Quando eu inserir um e-mail e senha válidos
E clicar no botão "Login"
Então o sistema deve redirecionar para a tela de checkout

Cenário: Login com e-mail ou senha inválidos

Dado que estou na página de login da EBAC-SHOP
Quando eu inserir um e-mail inválido ou uma senha inválida
E clicar no botão "Login"
Então o sistema deve deve exibir uma mensagem de alerta com o texto "Usuário ou senha inválidos"

Cenário: Lembrar login do usuário

Dado que estou na página de login da EBAC-SHOP
Quando eu inserir um email e senha válidos e clicar em "Remember me"
Então o sistema deve salvar automaticamente meu acesso e preenche-los automaticamente em futuros acessos


