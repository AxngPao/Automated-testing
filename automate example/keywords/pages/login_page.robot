*** Settings ***
Resource        ../import.robot

*** Keywords ***
Click button login
    SeleniumLibrary.Click Element                         ${login_locator.btn_login}
Input username
    [Arguments]                                           ${text}
    SeleniumLibrary.Input Text                            ${login_locator.txt_username}        ${text}
Input password
    [Arguments]                                           ${text}
    SeleniumLibrary.Input Text                            ${login_locator.txt_password}        ${text}
Click button submit
    SeleniumLibrary.Click Element                         ${login_locator.btn_submit}
Verify login success
    SeleniumLibrary.Wait Until Element Is Visible         ${login_locator.pop_up_login_success}
    SeleniumLibrary.Page Should Contain                   ${pop_up.pop_up_login_success}
Click ok after login success
    SeleniumLibrary.Wait Until Element Is Visible         ${login_locator.btn_ok_login_success} 
    SeleniumLibrary.Click Element                         ${login_locator.btn_ok_login_success} 