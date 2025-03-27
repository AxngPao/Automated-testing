*** Settings ***
Resource        ../import.robot

*** Keywords ***
login feature on home page
    login_page.Click button login
    login_page.Input username        ${login.username}
    login_page.Input password        ${login.password}
    login_page.Click button submit
    login_page.Verify login success
    login_page.Click ok after login success