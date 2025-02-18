*** Settings ***
Library  SeleniumLibrary
 
*** Variables ***

*** Settings ***
Resource    ../resources/Login_resource.resource
Resource    ../resources/navigation.resource

*** Test Cases ***
Open Google And Search

    Login    jasael.lozfraire01@gmail.com    Prueba123

    Navigation    ope_gestion    ope_dz    ope_consultar_dz

    Sleep           10s
    [Teardown]      Close Browser
 