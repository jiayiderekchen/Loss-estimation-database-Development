DROP PROCEDURE if exists gl.add_randnumber;
 
DELIMITER $$
CREATE PROCEDURE gl.add_randnumber()
BEGIN
    DECLARE x  INT;
        
    SET x = 1;
    
    while x <= 10000 do
      insert into gl.comp(comp) values
      (
      FLOOR(RAND() * 9999) + 1001
      );
      set x= x+1; 
	end while;
        
END$$
 
DELIMITER ;

call gl.add_randnumber; 


