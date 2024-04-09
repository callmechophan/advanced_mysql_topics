/*
 * user-defined functions
 * - created to perform operations that can't be completed with built-in-functions
 * 
 * CREATE FUNCTION function_name()
 * RETURNS DATATYPE DETERMINISTIC
 * RETURN
 * 
 * CREATE FUNCTION FUNC_FIND_TOTAL_COST(cost DECIMAL(5, 2))
 * RETURNS DECIMAL(5, 2) DETERMINISTIC
 * RETURN (cost - (cost * 0.1));
 * 
 * or
 * DELIMITER //
 * CREATE FUNCTION FUNC_FIND_TOTAL_COST(cost DECIMAL(5, 2))
 * RETURNS DECIMAL(5, 2) DETERMINISTIC
 * BEGIN
 * RETURN (cost - (cost * 0.1));
 * END //
 * DELIMITER ;
 * 
 * SELECT FUNC_FIND_TOTAL_COST(100);
*/