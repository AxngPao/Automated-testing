*** Settings ***
Resource        ../keywords/import.robot
Resource    ../keywords/common.robot

Test Setup         common.Open browser   
Test Teardown      common.Close browser

*** Test Cases ***
TC001
    login_page.Click button login
    login_page.Input username        ${login.username}
    login_page.Input password        ${login.password}
    login_page.Click button submit
    login_page.Verify login success
TC002
    search_page.Input product name      ${product.product_1}
    search_page.Click button search
    search_page.Click icon product_1  
    search_page.Click add to cart
    search_page.Verify pop up success
TC003
    search_page.Input product name    ${product.product_2}
    search_page.Click button search
    search_page.Get descript from product search Page
    ${text}    search_page.Get descript from product search Page    
    search_page.Click icon product_1 
    search_page.Verify description is correct    ${text}  

    




      

     
    


    
    
    