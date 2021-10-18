***Settings***
Resource        ../Resource/Resource.robot
Resource        ../Variables/Variables.robot
Test Setup      Abrir navegador
Test Teardown   Fechar navegador

***Test Cases***
Caso Teste 01: Buscar Produto
    Dado que acesso a pagina inicial do site
    Quando realizo a pesquisa do "${PRODUTO}" no campo de busca
    Então devo encontrar o resultado da pesquisa
    Quando realizo a compra do "${PRODUTO}" no site
    Então devo remover o produto da sacola
