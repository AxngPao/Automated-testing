*** Settings ***
Resource    ../import.robot

*** Keywords ***
Click to cart icon
    SeleniumLibrary.Click Element                     ${checkout_locator.btn_cart}
Fill info delivery and click pay
    BuiltIn.Sleep    1s
    SeleniumLibrary.Wait Until Element Is Enabled   ${checkout_locator.input_name}
    SeleniumLibrary.Input Text        ${checkout_locator.input_name}            ${delivery_info.name}
    SeleniumLibrary.Input Text        ${checkout_locator.input_surname}         ${delivery_info.surname}
    SeleniumLibrary.Input Text        ${checkout_locator.input_address}         ${delivery_info.address}  
    SeleniumLibrary.Input Text        ${checkout_locator.input_phone_number}    ${delivery_info.phone_number}
    SeleniumLibrary.Input Text        ${checkout_locator.input_email}           ${delivery_info.email}
    SeleniumLibrary.Click Element     ${checkout_locator.btn_pay}  

Select payment for check out
    SeleniumLibrary.Click Element     ${checkout_locator.select_payment}
    SeleniumLibrary.Click Element     ${checkout_locator.btn_next}

Fill info credit card and click confirm
    SeleniumLibrary.Input Text                        ${checkout_locator.input_cc_pan}    ${cc_detail.cc_pan}    
    SeleniumLibrary.Input Text                        ${checkout_locator.input_cc_exp}    ${cc_detail.cc_exp}
    SeleniumLibrary.Input Text                        ${checkout_locator.input_cc_cvc}    ${cc_detail.cc_cvc}
    SeleniumLibrary.Input Text                        ${checkout_locator.input_cc_name}   ${cc_detail.cc_name}       
    SeleniumLibrary.Click Element                     ${checkout_locator.btn_confirm}
    SeleniumLibrary.Wait Until Element Is Visible     ${checkout_locator.txt_payment_successfully}
    SeleniumLibrary.Page Should Contain               ${pop_up.pop_up_payment_success}
    SeleniumLibrary.Click Element                     ${checkout_locator.btn_ok} 

Verify order is correct
    SeleniumLibrary.Wait Until Element Is Visible     ${checkout_locator.txt_order_id}
    ${order_id}    SeleniumLibrary.Get Text           ${checkout_locator.txt_order_id}
    SeleniumLibrary.Click Element                     ${login_locator.btn_login}
    SeleniumLibrary.Wait Until Element Is Visible     ${checkout_locator.my_order_preparing}
    SeleniumLibrary.Click Element                     ${checkout_locator.my_order_preparing}
    SeleniumLibrary.Scroll Element Into View          ${checkout_locator.my_order_menu}
    BuiltIn.Sleep    1s 
    SeleniumLibrary.Click Element                     ${checkout_locator.last_order} 
    SeleniumLibrary.Page Should Contain               ${order_id}
    




