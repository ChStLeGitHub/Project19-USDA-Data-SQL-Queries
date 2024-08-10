-- Which states had cheese production greater than 100 million in April 2023?

SELECT
	cheese_production.State_ANSI,	
	state_lookup.State, 
	cheese_production.Value AS Cheese_April_2023

FROM 
	cheese_production INNER JOIN state_lookup 
	ON cheese_production.State_ANSI = state_lookup.State_ANSI

WHERE 
	cheese_production.Period = 'APR' 
	AND cheese_production.Value > 100000000
	AND cheese_production.Year = 2023