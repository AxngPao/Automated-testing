*** Settings ***
Library         SeleniumLibrary
Resource        ../keywords/RegisterKeywords.robot
Resource        ../keywords/HomePageKeywords.robot
Variables       ../resources/config/config.yaml
Suite Setup        Open Browser    ${baseUrl}    chrome
Suite Teardown     Close Browser


*** Test Cases ***
As a user, I want to register success with valid credential
    ${email}    Set Variable    Ab.stopbus+1@gmail.com
    ${firstName}    Set Variable    John
    ${lastName}    Set Variable    Paker
    ${phoneNumber}    Set Variable    0622919899
    ${newPassword}    Set Variable    Password123!
    ${confirmPassword}    Set Variable    Password123!
    user register to future skill platform with ${email}, ${newPassword}, ${firstName}, ${lastName}, ${phoneNumber}, ${newPassword}, ${confirmPassword}
    Wait Until Keyword Succeeds    5x    2s    Page Should Contain       ${Expected Text}
    [Teardown]    Close Browser