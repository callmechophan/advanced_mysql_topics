DELIMITER //
CREATE PROCEDURE PROC_GET_PRODUCT_SUMMARY(OUT number_of_low_price_products INT, OUT number_of_high_price_products INT)
BEGIN
    SELECT COUNT(product_id) INTO number_of_low_price_products
    FROM products
    WHERE price < 50;

    SELECT COUNT(product_id) INTO number_of_high_price_products
    FROM products
    WHERE price >= 50;
END //
DELIMITER ;

CALL PROC_GET_PRODUCT_SUMMARY(@total_number_of_low_price_products, @total_number_of_high_price_products);

SELECT @total_number_of_low_price_products, @total_number_of_high_price_products;