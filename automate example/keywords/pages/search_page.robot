*** Settings ***
Resource    ../import.robot

*** Keywords ***
Input product name
    [Arguments]                                      ${product}
    SeleniumLibrary.Wait Until Element Is Visible    ${search_locator.txt_product_name}
    SeleniumLibrary.Input Text                       ${search_locator.txt_product_name}    ${product}
Click button search
    SeleniumLibrary.Click Element                    ${search_locator.btn_product_search} 
Click icon product_1
    SeleniumLibrary.Wait Until Element Is Visible    ${search_locator.btn_product_1}     
    SeleniumLibrary.Click Element                    ${search_locator.btn_product_1} 
Click icon product_2
    SeleniumLibrary.Wait Until Element Is Visible    ${search_locator.btn_product_3}     
    SeleniumLibrary.Click Element                    ${search_locator.btn_product_3}        
Click add to cart
    SeleniumLibrary.Wait Until Element Is Visible    ${search_locator.btn_add_to_cart}
    SeleniumLibrary.Click Element                    ${search_locator.btn_add_to_cart}
Verify pop up success
    SeleniumLibrary.Wait Until Element Is Visible    ${search_locator.pop_up_add_to_cart_success}
    SeleniumLibrary.Page Should Contain              ${pop_up.pop_up_add_to_cart_success}
Get descript from product search Page
    SeleniumLibrary.Wait Until Element Is Visible    ${search_locator.txt_descript_product_1_on_search_page} 
    ${descript}    SeleniumLibrary.Get Text          ${search_locator.txt_descript_product_1_on_search_page}
    RETURN                                           ${descript}
Verify description is correct
    [Arguments]        ${text}
    SeleniumLibrary.Wait Until Element Is Visible    ${search_locator.txt_descript_product_1}
    SeleniumLibrary.Element Should Contain           ${search_locator.txt_descript_product_1}    ${text}   
    

