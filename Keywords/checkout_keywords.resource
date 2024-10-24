*** Settings ***
Library    SeleniumLibrary
Library    Collections
Resource    ../Resources/checkout_page.resource

*** Keywords ***
verify checkout page is loaded
    wait until element is visible    ${table_path}
    sleep    2s

user get product table values

    #product name value
    ${product_name_table}    get text    ${product_name_value}
    should be equal as strings    ${product_name_table}    Brocolli - 1 Kg
   sleep    2s

    #product quantity in table
    ${product_quantity_table}    get text    ${product_quantity_value}
    should be equal as strings    ${product_quantity_table}    5
    sleep    2s

    #product price in table
    ${product_price_table}    get text    ${product_price_value}
    should be equal as strings    ${product_price_table}    120
    sleep    2s

    #product total price in table
    ${product_total_table}    get text    ${product_total_value}
    ${product_total_table}    convert to number   ${product_total_table}
    should be equal as numbers    ${product_total_table}    600
    sleep    2s
    ${product_table_values}    create list    ${product_name_table}    ${product_quantity_table}   ${product_price_table}   ${product_total_table}
    RETURN    ${product_table_values}

verify table values with initial values
    [Arguments]    ${product_values}  ${pruduct_table_values}
     lists should be equal    ${product_values}    ${pruduct_table_values}
     log to console    lists are equal
user click on place order button
   click button    ${place_order_button}
   sleep    2s

user select iraq in choose country
    click element    ${select_element}
    sleep    2s
    select from list by value  ${select_element}   Iraq
    sleep    2s

user select condition and agreements
    select checkbox    ${select_agreements}
    sleep    2s
user click on proceed button
    click button    ${proceed_button}
    sleep    2s
