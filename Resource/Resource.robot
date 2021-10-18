***Settings***
Library   SeleniumLibrary


***Keywords***
#Setup e Teardown

Abrir navegador
    Open Browser     about:blank  ${BROWSER}
    Go To            ${URL}

Fechar navegador
    Close Browser

#Executando Test Cases
Dado que acesso a pagina inicial do site
     Go To                          ${URL}
    Maximize Browser Window   
    Sleep                           2
    Wait Until Element Is Visible   xpath=//*[@id="onetrust-accept-btn-handler"]
    Click Element                   xpath=//*[@id="onetrust-accept-btn-handler"]

Quando realizo a pesquisa do "${PRODUTO}" no campo de busca
    Click Element    xpath=//*[@id="input-busca"]
    Sleep            3
    Input Text       xpath=//*[@id="input-busca"]  ${PRODUTO}
    Sleep            3

Então devo encontrar o resultado da pesquisa
    Click Element          xpath=//*[@id="barraBuscaKabum"]/div/form/button
    Sleep                  5
    Mouse Down On Image    xpath=//*[@id="listing"]/article/section/div[2]/div/main/div[1]/a/img
    Sleep                  3
    Click Element          xpath=//*[@id="listing"]/article/section/div[2]/div/main/div[1]/a/img
    Sleep                  2
    Click Element          xpath=//*[@id="carrosselLateralDescricao"]/div/div/div/div[2]/div/button/img
    Sleep                  3

Quando realizo a compra do "${PRODUTO}" no site
     Click Element          xpath=//*[@id="blocoValores"]/div[2]/button
     Sleep                  3      
     Click Element          xpath=//*[@id="__next"]/div[1]/section/div/div[4]/button[2]
     Sleep                  3


Então devo remover o produto da sacola
    Click Element         xpath=//*[@id="buttonRemover"]  
     Sleep                  3
    Click Element         xpath=//html/body/div[6]/div[3]/div/div/div/div/button[2]
    Wait Until Element Is Visible  xpath=//*[@id="__next"]/div[1]/button
    Click Element         xpath=//*[@id="__next"]/div[1]/button
    Sleep                  3
