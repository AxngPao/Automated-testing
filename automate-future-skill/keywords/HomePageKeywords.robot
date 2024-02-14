*** Settings ***
Library         SeleniumLibrary
Resource        CommonKeywords.robot

*** Variables ***
${URL}               https://app.futureskill.co/register
${Element Locator}   xpath=//div[@id="__next"]
${Expected Text}    ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์

*** Keywords ***
future skill should display home page and display message as ${Expected Text}
    CommonKeywords.Wait until page contains element then verify text    ${Expected Text} 

