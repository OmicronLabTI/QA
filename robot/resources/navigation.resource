*** Settings ***
Library  SeleniumLibrary
 
*** Variables ***

*** Keywords ***
Navigation
    [Arguments]    ${menu1}    ${menu2}    ${menu3}    ${boton}=None
    
    Wait Until Element Is Visible    id=${menu1}
    Click Element    locator=${menu1}
    Sleep           1s
    
    Wait Until Element Is Visible    id=${menu2}
    Click Element    locator=id=${menu2}
    Sleep           1s

    Wait Until Element Is Visible    id=${menu3}
    Click Element    locator=id=${menu3}
    Sleep           1s

 # Solo hacer clic en el botón si fue proporcionado
    IF    '${boton}' != 'None' and '${boton}' != ''
        Wait Until Element Is Visible    id=${boton}
        Click Element    id=${boton}
    END
    