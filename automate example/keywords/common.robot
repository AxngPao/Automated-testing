*** Settings ***
Resource        import.robot
*** Keywords ***
Open browser
    SeleniumLibrary.Open Browser        ${url}        ${browser}
Close browser
    SeleniumLibrary.Close All Browsers