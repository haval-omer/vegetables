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

user verify product
    #verify produxt name
    ${product_name}     get text    ${Brocolli_product_name}
    should be equal as strings    ${product_name}    Brocolli - 1 Kg

    #verify product quantity
   ${quantity}      get value    ${quantity-path}
   convert to number    ${quantity}
   should be equal as numbers    ${quantity}    5

    #verify product single price
    ${price}    get text    ${Brocolli_price}
    convert to number     ${price}
    should be equal as numbers   ${price}    120

    #verify total orice
    ${total_price}   Evaluate   ${quantity}*${price}
    should be equal as numbers    ${total_price}    600

    ${product_init_values}    create list   ${product_name}    ${quantity}    ${price}    ${total_price}
    RETURN    ${product_init_values}
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