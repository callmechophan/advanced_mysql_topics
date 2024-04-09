/*
 * variable
 * - used to pass values between SQL statements, or between a procedure and a SQL statement
 * 
 * stored procedure
 * - variables are created inside or outside of a stored procedure / SELECT statement
 * 
 * @variable_name = value;
 * 
 * SET command
 * - assigns a value to a variable within a stored procedure
 * 
 * SET @variable_name = value;
 * EX: SET @order_id = 3;
 * 
 * DECLARE command variables
 * - create a variable inside a stored procedure
 * 
 * DECLARE variable_name DATATYPE DEFAULT VALUE;
 * EX: DECLARE minimum_order_cost DECIMAL(5, 2) DEFAULT 0;
 * 
 * variable inside SELECT commands
 * := operator
 * - create a variable inside a SELECT statement
 * SELECT @variable_name := value;
 * SELECT @max_order := MAX(cost) FROM orders;
 * SELECT @max_order;
 * 
 * SELECT function() INTO variable_name FROM table_name;
 * SELECT AVG(cost) INTO @average_cost FROM orders;
 * 
 * parameters
 * - pass arguments, or values, to a function or procedure from the outside
 * 
 * type of parameters
 * - IN
 * - OUT
 * - INOUT
 * 
 * IN parameter
 * CREATE PROCEDURE procedure_name(IN logic DATATYPE) SELECT logic;
 * CREATE PROCEDURE PROC_CALCULATE_TAX(IN salary DECIMAL(10, 2))
 * SELECT salary * 0.2 AS tax;
 * CALL PROC_CALCULATE_TAX(1000);
 * 
 * OUT parameter
 * CREATE PROCEDURE PROC_GET_LOWEST_COST(OUT lowest_cost DECIMAL(6, 2))
 * SELECT MIN(cost) INTO lowest_cost FROM orders;
 * CALL PROC_GET_LOWEST_COST(@order_lowest_cost);
 * SELECT @order_lowest_cost;
 * 
 * INOUT parameter
 * CREATE PROCEDURE PROC_SQUARE_A_NUMBER(INOUT number INT)
 * BEGIN
 *     SET number = number * number;
 * END;
 * 
 * SET @x_number = 5;
 * CALL PROC_SQUARE_A_NUMBER(@x_number);
*/