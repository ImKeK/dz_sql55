CREATE DATABASE dz_seminar5;
USE dz5;

DELIMITER //
CREATE PROCEDURE counter(num INT)
BEGIN
	CASE
		WHEN num < 60 THEN
			SELECT CONCAT(num, ' ', 'second') AS Результат;
        WHEN num >= 60 AND num < 3600 THEN
			SELECT CONCAT(' ', num DIV 60, 'minutes', MOD(num, 60), 'seconds') AS Результат;
        WHEN num >= 3600 AND num < 86400 THEN
			SELECT CONCAT(' ', num DIV 3600, 'hours', MOD(num, 3600) DIV 60, 'minutes', MOD(MOD(num, 3600),60), 'second') AS Результат;
        ELSE
			SELECT CONCAT(' ', num DIV 86400, 'days', MOD(num, 86400) DIV 3600, 'hours', MOD(MOD(num, 86400),3600) DIV 60, 'minute',
                             MOD(MOD(MOD(num, 86400),3600),60), 'seconds') AS Результат;
    END CASE;
END//

DELIMITER ;
CALL counter(4314134);  


