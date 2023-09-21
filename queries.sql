-- Join the two tables so that every column and record appears, regardless
-- of if there is not an owner_id.
SELECT * FROM owners FULL OUTER JOIN vehicles ON owners.id = vehicles.owner_id;

-- Count the number of cars for each owner. Display the owners ***first_name*** , ***last_name*** and ***count***
-- of vehicles. The first_name should be ordered in ascending order.
SELECT first_name, last_name, COUNT(*)
FROM owners JOIN vehicles ON owners.id = vehicles.owner_id
GROUP BY first_name, last_name ORDER BY first_name;

-- - Count the number of cars for each owner. Display the owners ***first_name*** ,
-- ***last_name*** and ***count*** of vehicles. The first_name should
-- be ordered in ascending order.
SELECT first_name, last_name, ROUND(AVG(price)) as average_Price, COUNT(owner_id)
FROM owners JOIN vehicles ON owners.id = vehicles.owner_id
GROUP BY first_name, last_name HAVING COUNT(owner_id) > 1 AND ROUND(AVG(price)) > 10000
ORDER BY first_name DESC;