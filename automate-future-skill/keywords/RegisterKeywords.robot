*** Settings ***
Library         SeleniumLibrary
Resource        CommonKeywords.robot

*** Keywords ***
user register to future skill platform with ${email}, ${newPassword}, ${firstName}, ${lastName}, ${phoneNumber}, ${newPassword}, ${confirmPassword}
    CommonKeywords.Wait until element is ready then click element     xpath=//button[text()="สมัครสมาชิก"]
    CommonKeywords.Wait until element is ready then input text        name=email    text=${email}
    CommonKeywords.Wait until element is ready then input text        name=firstName    text=${firstName}
    CommonKeywords.Wait until element is ready then input text        name=lastName    text=${lastName}
    CommonKeywords.Wait until element is ready then input text        name=phoneNumber     text=${phoneNumber}
    CommonKeywords.Wait until element is ready then input text        name=newPassword     text=${newPassword}
    CommonKeywords.Wait until element is ready then input text        name=confirmPassword    text=${confirmPassword}
    CommonKeywords.Wait until element is ready then click element     xpath=//input[@type="checkbox"]              
    CommonKeywords.Wait until element is ready then click element     xpath=//button[text()="สมัครสมาชิก"]