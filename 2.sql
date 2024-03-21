CREATE DATABASE dz_seminar5_1;
USE dz5;
DELIMITER //
CREATE PROCEDURE parity(`start` INT, `end` INT)
BEGIN
	DECLARE i INT DEFAULT `start`;
    DECLARE str TEXT DEFAULT NULL;
    WHILE  i<=`end` DO
        IF i%2 = 0 THEN
			IF str IS NULL THEN
				SET str = concat(i);
			ELSE
				SET str = concat(str, ', ', i);
			END IF;
		END IF;
        SET i = i + 1;
    END WHILE;
	SELECT str;
END //
DELIMITER ;

CALL parity(1, 20);