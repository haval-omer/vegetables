*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/home_page_var.resource

*** Keywords ***
user open web site
    open browser    ${URL}    ${browser}
    maximize browser window

user select 5-kg of brocolli

    FOR  ${i}  IN RANGE    4
    click element    ${increment-path}
    END

user verify product name
    ${product_name}     get text    ${Brocolli_product_name}
    should be equal as strings    ${product_name}    Brocolli - 1 Kg

user verify quantity
   ${q}      get value    ${quantity-path}
   convert to number    ${q}
   should be equal as numbers    ${q}    5
   RETURN    ${q}
user verify single price
    ${price}    get text    ${Brocolli_price}
    convert to number     ${price}
    should be equal as numbers   ${price}    120
    RETURN    ${price}

user verify final price
    ${item-price}       user verify single price
    ${item-quantity}     user verify quantity
    ${f-price}   Evaluate   ${item-price}*${item-quantity}
    should be equal as numbers    ${f-price}    600

user add 5-kg of broklli to add to card
    click button    ${AddTo-card-button}
    sleep    3s
user click on cart icon
    click element    ${cart-icon}
    sleep    3s
user click on procced to checkout button
    element should be visible    ${processToCheckout-Button}
    sleep   3s
    click button    ${processToCheckout-Button}
    sleep    3s