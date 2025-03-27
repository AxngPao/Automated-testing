*** Settings ***
Library        SeleniumLibrary
Library        String

Resource        ${CURDIR}/../resources/locator/login_locator.robot
Resource        ${CURDIR}/../resources/locator/search_locator.robot
Resource        ${CURDIR}/../resources/locator/checkout_locator.robot
Resource        ${CURDIR}/../keywords/pages/login_page.robot
Resource        ${CURDIR}/../keywords/pages/search_page.robot
Resource        ${CURDIR}/../keywords/pages/checkout_page.robot
Resource        ${CURDIR}/../keywords/features/login_feature.robot


Variables       ${CURDIR}/../resources/setting/config.yaml
Variables       ${CURDIR}/../resources/testdata/testdata.yaml