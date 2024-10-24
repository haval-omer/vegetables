*** Variables ***
${URL}                   https://rahulshettyacademy.com/seleniumPractise/#/
${browser}              chrome
${Brocolli_product}      //div[@class='product' and h4[contains(text(),'Brocolli - 1 Kg')]]
${Brocolli_product_name}    //div[@class='product' and h4[contains(text(),'Brocolli - 1 Kg')]]//h4
${Brocolli_price}        //div[@class='product' and h4[contains(text(),'Brocolli - 1 Kg')]]//p[@class='product-price']
${Brocolli-input-path}    //div[@class='product' and h4[contains(text(),'Brocolli - 1 Kg')]]/div[@class='stepper-input']
${quantity-path}        //div[@class='product' and h4[contains(text(),'Brocolli - 1 Kg')]]/div[@class='stepper-input']//input[@class='quantity']
${increment-path}       //div[@class='product' and h4[contains(text(),'Brocolli - 1 Kg')]]/div[@class='stepper-input']//a[@class='increment']
${AddTo-card-button}    //div[@class='product' and h4[contains(text(),'Brocolli - 1 Kg')]]//div[@class='product-action']//button
${cart-icon}            //a[@class='cart-icon']
${processToCheckout-Button}    //div[@class='action-block']//button