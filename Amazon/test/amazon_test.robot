
*** Settings ***
Documentation    Essa suite testa o site da Amazon.com.br
Resource         ../Resources/amazon_resources.robot
Resource         ../Paginas/home.robot
Resource         ../Paginas/MaisVendido.robot
Resource         ../Paginas/carrinho.robot
Resource         ../Paginas/Login.robot
Test Setup       Abrir navegador
Test Teardown    Fechar navegador 



*** test cases *** 

Caso de teste 01 - Efetuar Login
    [Documentation]    Esse teste efetua login no Site da Amazon.com.br    
    [Tags]             Login    
    
    Acessar a home page do site Amazon.com.br
    Clicar em fazer login
    Inserir email e senha    seuemail@gmail.com        suasenha123
  

Caso de teste 02 - Acesso ao menu "Mais vendidos"
    [Documentation]    Esse teste verifica o menu dos Mais Vendidos    
    [Tags]             menus
                  
    Acessar a home page do site Amazon.com.br
    Entrar no menu "Mais Vendidos"
    Verificar se aparece a frase "Mais Vendidos"
    Verificar se o título da página fica "Amazon.com.br Mais Vendidos: Os itens mais populares na Amazon"
    Verificar se aparece a categoria "Mais Vendidos em Eletrônicos"


    


Caso de teste 03 - Pesquisa de um Produto
    [Documentation]    Esse teste verifica a busca de um produto
    [Tags]             busca_produtos

    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa se está listando o produto "Console Xbox Series S"


Caso de teste 04 - Inserir no carrinho
    [Documentation]    Esse teste insere o produto no carrinho        
    [Tags]             produto_carrinho

    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa se está listando o produto "Console Xbox Series S"
    Adicionar o produto "Xbox Series S" no carrinho
    Verificar se o produto "Console Xbox Series S" foi adicionado com sucesso

Caso de teste 05 - Remover Produto do Carrinho  
    [Documentation]    Esse teste remove o produto no carrinho
    [Tags]             Remover_produto

    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa se está listando o produto "Console Xbox Series S"
    Adicionar o produto "Xbox Series S" no carrinho
    Verificar se o produto "Console Xbox Series S" foi adicionado com sucesso
    Remover o produto "Console Xbox Series S" do carrinho
    Verificar se o carrinho fica vazio

    


    

      






