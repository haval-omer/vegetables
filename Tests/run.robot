*** Settings ***
Resource    ../Keywords/home_page.resource
Resource    ../Keywords/checkout_keywords.resource

*** Test Cases ***
run and buy 5-kg of Brocolli
    user open web site
    user select 5-kg of brocolli
    user verify product name
    user verify quantity
    user verify single price
    user verify final price
    user add 5-kg of broklli to add to card
    user click on cart icon
    user click on procced to checkout button
    user verify product name in checkout table
    user verify product Quantity in checkout table
    user verify product Price in checkout table
    user verify product Total Price in checkout table
    user click on place order button
    user select iraq in choose country
    user select condition and agreements
    user click on proceed button
