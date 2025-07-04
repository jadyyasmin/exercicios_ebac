#language: pt

Funcionalidade: Configuração de produto na EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
e escolher a quantidade
Para depois inserir no carrinho

Cenário: Configurar e adicionar produto ao carrinho

Dado que estou na página de um produto
Quando selecionar a cor, o tamanho e uma quantidade entre 1 e 10 de um produto
Então o produto deve ser adicionado ao carrinho com as opções escolhidas

Cenário: Validação de seleção obrigatória

Dado que estou na página de um produto
Quando eu tentar adicionar o produto ao carrinho sem selecionar cor, tamanho ou quantidade
Então o sistema deve exibir uma mensagem de erro informando que todas as seleções são obrigatórias

Cenário: Limite de quantidade por venda

Dado que estou na página de um produto
Quando eu tentar escolher uma quantidade maior que 10
Então o sistema deve exibir uma mensagem de erro informando que o limite é de 10 unidades por venda

Cenário: Limpar seleção de produto

Dado que fiz seleções de cor, tamanho e quantidade
Quando eu clicar no botão "limpar"
Então o sistema deve resetar todas as seleções para o estado original