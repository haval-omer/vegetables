*** Settings ***
Resource    ../Keywords/home_page.resource
Resource    ../Keywords/checkout_keywords.resource

*** Test Cases ***
run and buy 5-kg of Brocolli
    user open web site
    user select 5-kg of brocolli
    ${product_values}=    user verify product
    user add 5-kg of broklli to add to card
    user click on cart icon
    user click on procced to checkout button
    verify checkout page is loaded
    ${pruduct_table_values}=    user get product table values
    verify table values with initial values    ${product_values}    ${pruduct_table_values}
    user click on place order button
    user select iraq in choose country
    user select condition and agreements
    user click on proceed button
