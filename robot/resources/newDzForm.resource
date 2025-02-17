*** Settings ***
Library  SeleniumLibrary
 
*** Variables ***

*** Keywords ***
FormDz
    Wait Until Element Is Visible    class=modals
    Input Text    name=fechadeseada  25032025
    Sleep           1s

    Input Text    name=nombre  test nombre 1
    Sleep           1s

    ##familia
    SeleniumLibrary.Click Element    locator=name=familia
    Sleep           1s

      # Seleccionar las opciones deseadas por texto
    Click Element    xpath=//div[@role='option'][span[text()='Sunveil']]
    Sleep           1s

    # Click Element    xpath=//div[@role='option'][span[text()='Neudermic']]
    # Click Element    xpath=//div[@role='option'][span[text()='Capilarium']]

    ##genero
    SeleniumLibrary.Click Element    locator=name=genero
    Sleep           1s

    Click Element    xpath=//div[@role='option'][span[text()='Mujer']]
    Sleep           1s


    Input Text    name=rangoedad  +18 años
    Sleep           1s


    ##tipopiel
    SeleniumLibrary.Click Element    locator=name=tipopiel
    Sleep           1s

    Click Element    xpath=//div[@role='option'][span[text()='Grasa']]
    Sleep           1s

    ##area
    SeleniumLibrary.Click Element    locator=name=area
    Sleep           1s

    # Seleccionar las opciones deseadas por texto
    Click Element    xpath=//div[@role='option'][span[text()='Cara']]
    Sleep           1s

    Click Element    xpath=//div[@role='option'][span[text()='Manos']]
    Sleep           1s

    ##otroarea
    Input Text      name=otroarea    area_test
    Sleep           1s


    ##base
    SeleniumLibrary.Click Element    locator=name=base
    Sleep           1s

    Click Element    xpath=//div[@role='option'][span[text()='Gel-Crema']]
    Sleep           1s

    
    ##padecimiento
    Input Text      name=padecimiento    padecimiento test robot
    Sleep           1s

    ##Activos
    Input Text      name=activos    activos test robot
    Sleep           1s

    ##presentacion
    Input Text      name=presentacion    80
    Sleep           1s

    ##envase
    SeleniumLibrary.Click Element    locator=name=envase
    Sleep           1s

    Click Element    xpath=//div[@role='option'][span[text()='Pomadera']]
    Sleep           1s

    ##objetivo
    Input Text      name=objetivo    750
    Sleep           1s


    SeleniumLibrary.Click Button     locator=id=fn_btn_enviar_solicitud
 