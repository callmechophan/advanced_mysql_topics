/*
 * trigger
 * - a set of actions available in the form of a stored program invoked when an event occurs
 * 
 * CREATE TRIGGER trigger_name
 * TRIGGER TYPE ON table_name
 * FOR EACH ROW
 * BEGIN
 *     statement_one
 *     statement_two
 * END
 * 
 * DROP TRIGGER IF EXISTS schema_name.trigger_name;
 * 
 * keeping a log of record
 * - useful for maintaining audit trails
 * 
 * alternative to constraints
 * - maintain data integrity and run tasks 
*/

DELIMITER //
CREATE TRIGGER TRIG_APPROVAL_REQUEST
BEFORE UPDATE ON orders
FOR EACH ROW
BEGIN
    IF NEW.bill_amount <= 0 THEN SET NEW.bill_amount = 0;
    ELSEIF NEW.bill_amount > 100 THEN SET NEW.bill_amount = 100;
    END IF;
END; //
DELIMITER ;