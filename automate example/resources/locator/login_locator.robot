*** Variables ***
${login_locator.btn_login}                    xpath=//header[@class="ant-layout-header header"]//span[@aria-label="user"]
${login_locator.txt_username}                 xpath=//input[@type="text"]
${login_locator.txt_password}                 xpath=//input[@type="password"]
${login_locator.btn_submit}                   xpath=//button[@type="submit"]
${login_locator.pop_up_login_success}         xpath=//div[@class="ant-modal-confirm-content"]
${login_locator.btn_ok_login_success}         xpath=//span[text()='OK']/parent::button
