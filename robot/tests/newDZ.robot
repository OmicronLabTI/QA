*** Settings ***
Library  SeleniumLibrary
 
*** Variables ***

*** Settings ***
Resource    ../resources/Login_resource.resource
Resource    ../resources/newDzForm.resource
Resource    ../resources/navigation.resource

*** Test Cases ***
Open Google And Search

    Login    dev1@o-lab.mx    Prueba123

    Navigation    fn_gestion    fn_dz    fn_generar_dz    fn_btn_nueva_dz

    FormDz

    Sleep           4s
    [Teardown]      Close Browser
 