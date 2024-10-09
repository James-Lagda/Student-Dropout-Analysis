Select * from `dropouts`;

select * from `dropouts`
where Gender = 'M';

select * from `dropouts`
where Gender != 'M';

SELECT COUNT(Gender) 'alternative: SELECT COUNT()'
FROM `dropouts`
where Gender = 'F';

select * from `dropouts`
where Dropped_Out = 'TRUE';

SELECT COUNT(*) AS num_dropouts
FROM dropouts
WHERE Dropped_Out = 'TRUE';

SELECT *,
       COUNT(*) OVER (PARTITION BY gender) AS dropout_count
FROM dropouts
WHERE Dropped_Out = 'TRUE';

SELECT gender, COUNT(*) AS dropout_count
FROM dropouts
WHERE Dropped_Out = 'TRUE'
GROUP BY gender;

Select * from `dropouts`;

select * from `dropouts`
where Gender = 'M'
and (Parental_Status = 'A'or Guardian = 'Mother') ;

SELECT AVG(`Mother_Education`) AS Mother_Education
FROM `dropouts`;

SELECT AVG(`Father_Education`) AS Father_Education
FROM `dropouts`;