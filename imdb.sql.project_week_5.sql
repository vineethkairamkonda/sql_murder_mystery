
USE project_week_5;

SHOW Tables;

DESCRIBE crime_scene_report;

SELECT *
FROM crime_scene_report
WHERE city = "SQL City"
ORDER BY date;

DESCRIBE person;

SELECT *
FROM Person
WHERE address_street_name = "Northwestern Dr"
ORDER BY address_number desc
LIMIT 10;


SELECT *
FROM Person
WHERE address_street_name = "Franklin Ave" AND name like '%Annabel%';

DESCRIBE interview;

SELECT *
FROM interview
WHERE person_id = 14887 OR person_id = 16371;

DESCRIBE get_fit_now_check_in;

SELECT *
FROM get_fit_now_check_in
WHERE membership_id like '%48Z%' AND check_in_date = 20180109
ORDER By check_in_date;

DESCRIBE drivers_license;

SELECT *
FROM drivers_license
WHERE plate_number like "%H42W%";

SELECT *
FROM Person
WHERE license_id ="423327" OR license_id ="664760";

DESCRIBE get_fit_now_member;
SELECT *
FROM get_fit_now_member
WHERE person_id ="51739" OR person_id ="67318";

SELECT *FROM interview WHERE person_id = 67318;

SELECT *
FROM drivers_license
WHERE car_make = "Tesla" AND car_model = "Model S" AND gender = "female"
AND hair_color = "red";

SELECT *FROM Person WHERE license_id ="202298" OR license_id ="291182" OR license_id ="918773";

DESCRIBE  facebook_event_checkin;

SELECT person_id, count(*), event_name 
FROM facebook_event_checkin 
WHERE event_name = "SQL Symphony Concert" AND date LIKE '%201712%'
GROUP BY person_id 
HAVING count(*) = 3 
LIMIT 0, 1000;	
