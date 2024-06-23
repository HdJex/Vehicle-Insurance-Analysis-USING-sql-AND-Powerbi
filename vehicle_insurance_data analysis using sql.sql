-- total no of unsurances purchased

SELECT count(*) FROM atharva.vehicle_insurance_data;

-- count of policy state wise
SELECT * FROM atharva.vehicle_insurance_data;

SELECT state, COUNT(*) as policy_count
FROM atharva.vehicle_insurance_data
GROUP BY state
order by policy_count desc;

-- Calculate the average 'on_road_price' of vehicles for each brand.

select brand , avg(on_road_price) as avg_price from atharva.vehicle_insurance_data
group by brand
order by avg_price desc;

-- most preffered policy type

select pol_type , count(pol_type
) as pol_count from atharva.vehicle_insurance_data
group by pol_type
order by pol_count desc;

SELECT * FROM atharva.vehicle_insurance_data;

-- Find the total gross premium collected for each type of policy.

select policy , sum(gross_premium
) as gross from atharva.vehicle_insurance_data
group by policy
order by gross desc;


-- List the top 5 brands with the highest insurance declared value (IDV).

select brand , sum(insurance_declared_value) as idv from atharva.vehicle_insurance_data
group by brand
order by idv desc
limit 5;

-- Determine the percentage of policies that include addon products.
SELECT * FROM atharva.vehicle_insurance_data;

SELECT 
  (SELECT COUNT(*) FROM atharva.vehicle_insurance_data WHERE addon_prod = 'Yes') * 100.0 / COUNT(*) as addon_percentage
FROM atharva.vehicle_insurance_data;

-- Retrieve the details of policies purchased every year


SELECT 
    YEAR(STR_TO_DATE(dt_pol_create, '%d-%m-%Y')) AS year, 
    COUNT(*) AS policy_count
FROM 
    atharva.vehicle_insurance_data
GROUP BY 
    YEAR(STR_TO_DATE(dt_pol_create, '%d-%m-%Y'))
ORDER BY 
    year;





















