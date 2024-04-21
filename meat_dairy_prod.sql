ALTER TABLE 
	`meat&dairycasestudy`.`global-meat-production-df`
RENAME COLUMN 
	`Meat, total | 00001765 || Production | 005510 || tonnes` TO `Total_meat_production_in_tonnes`;

UPDATE `meat&dairycasestudy`.`global-meat-production-df`
SET Country = CONCAT(
    UPPER(SUBSTRING_INDEX(Country, ' ', 1)),
    LOWER(SUBSTRING(Country, LENGTH(SUBSTRING_INDEX(Country, ' ', 1)) + 1))
)
WHERE Country = '1';

SELECT 
  *
FROM 
  `meat&dairycasestudy`.`global-meat-production-df` 
WHERE 
  Code != '0';




