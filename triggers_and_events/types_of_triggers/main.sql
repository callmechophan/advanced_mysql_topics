/*
 * row-level
 * - trigger invoked for each row
 * 
 * statement-level (MySQL only supports row-level triggers)
 * - trigger invoked for each statement
 * 
 * BEFORE
 * - trigger invoked before an action
 * TRIGGER -> ACTION -> ROW
 * 
 * AFTER
 * - trigger invoked after an action
 * ACTION -> ROW -> TRIGGER
*/

DELIMITER //
CREATE TRIGGER TRIG_AFTER_DELETE_ORDER
AFTER DELETE ON orders
FOR EACH ROW
BEGIN
    INSERT INTO audits
    VALUES ("AFTER", CONCAT("order ", OLD.order_id, " was deleted at ", CURRENT_TIME(), " on ", CURRENT_DATE()), "DELETE");
END; //
DELIMITER ;