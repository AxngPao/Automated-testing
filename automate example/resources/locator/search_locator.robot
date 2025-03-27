*** Settings ***
Resource            ../../keywords/import.robot

*** Variables ***
${search_locator.txt_product_name}                                   xpath=//input[@placeholder="input search text"] 
${search_locator.btn_product_search}                                 xpath=//button[@class="css-eq3tly ant-btn ant-btn-primary ant-input-search-button"]
${search_locator.btn_product_1}                                      xpath=//div[text()='${product.product_1}']
${search_locator.txt_descript_product_1_on_search_page}              xpath=//div[text()='${product.product_1}']/following-sibling::div
${search_locator.txt_descript_product_1}                             xpath=//div[@class="detail-content"]/p

${search_locator.btn_product_3}                                      xpath=//div[text()='${product.product_3}']
${search_locator.btn_add_to_cart}                                    xpath=//span[text()='Add to cart']/parent::button
${search_locator.pop_up_add_to_cart_success}                         xpath=//div[text()='Add product successfully']