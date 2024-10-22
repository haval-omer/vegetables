*** Settings ***
Library    SeleniumLibrary
Resource    ../Variables/checkout_page.robot

*** Keywords ***
verify checkout page is loaded
    wait until element is visible    ${table_path}
    sleep    3s

user verify product name in checkout table
    ${product_name_header}    get text    ${product_name_header}
    should be equal as strings   ${product_name_header}   Product Name
    ${product_name_value}    get text    ${product_name_value}
    should be equal as strings    ${product_name_value}    Brocolli - 1 Kg
    sleep    1s

user verify product Quantity in checkout table
    ${product_quantity_header}    get text    ${product_quantity_header}
    should be equal as strings   ${product_quantity_header}   Quantiry
    ${product_quantity_value}    get text    ${product_quantity_value}
    should be equal as strings    ${product_quantity_value}    5
    sleep    1s

user verify product Price in checkout table
    ${product_price_header}    get text    ${product_price_header}
    should be equal as strings   ${product_price_header}   Price
    ${product_price_value}    get text    ${product_price_value}
    should be equal as strings    ${product_price_value}    120
    sleep    1s

user verify product Total Price in checkout table
    ${product_total_header}    get text    ${product_total_header}
    should be equal as strings   ${product_total_header}   Total
    ${product_total_value}    get text    ${product_total_value}
    should be equal as strings    ${product_total_value}    600
    sleep    1s

user click on place order button
   click button    ${place_order_button}
   sleep    3s

user select iraq in choose country
    click element    ${select_element}
    sleep    5s
    select from list by value  ${select_element}   Iraq
    sleep    3s

user select condition and agreements
    select checkbox    ${select_agreements}
    sleep    3s
user click on proceed button
    click button    ${proceed_button}
    sleep    2s
