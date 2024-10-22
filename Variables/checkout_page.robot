*** Variables ***
${table_path}    //div[@class='products']

${product_name_header}    //thead//tr//td[contains(.,'Product Name')]
${product_name_value}     //tbody//tr//td//p[@class='product-name']

${product_quantity_header}    //thead//tr//td[contains(.,'Quantiry')]
${product_quantity_value}    //tbody//tr//td//p[@class='quantity']

${product_price_header}    //thead//tr//td[contains(.,'Price')]
${product_price_value}    //tbody//tr//td//p[contains(text(),"120")]

${product_total_header}    //thead//tr//td[contains(.,'Total')]
${product_total_value}    //tbody//tr//td//p[contains(text(),"600")]

${place_order_button}    //button[contains(text(),'Place Order')]

${select_element}    //select

${select_agreements}    //input[@type='checkbox']
${proceed_button}    //button[contains(text(),'Proceed')]
