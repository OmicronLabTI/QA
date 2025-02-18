*** Settings ***
Library  SeleniumLibrary
 
*** Variables ***
${URL}  http://localhost:3000/

*** Keywords ***
Login
    [Arguments]    ${email}    ${password}
    
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Input Text      id=login_email   ${email}
    Input Text      id=login_password   ${password}
    SeleniumLibrary.Click Button     locator=id=login_submit
    Sleep           1s