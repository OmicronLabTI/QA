*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}  https://cliente-ashen.vercel.app/
${USER}  r.valadez@o-lab.mx
${PASSWORD}  Omicronlab25

*** Test Cases ***
Login And First Page
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Capture Page Screenshot    ${OUTPUTDIR}/login.png
    Input Text          id=login_email   ${USER}
    Input Password      id=login_password   ${PASSWORD}       
    Click Button        id=login_submit
    Sleep               5s
    Capture Page Screenshot    ${OUTPUTDIR}/pantallainicial.png
    Close Browser
