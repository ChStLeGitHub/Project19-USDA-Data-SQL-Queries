-- List all states with their cheese production values, even if they didn't produce any, in April 2023.

SELECT
	state_lookup.State_ANSI, state_lookup.State, 
	cheese_production.Value AS Cheese_April_2023

FROM
	state_lookup LEFT JOIN cheese_production
	ON state_lookup.State_ANSI = cheese_production.State_ANSI
		AND cheese_production.Period = 'APR'
		AND cheese_production.Year = 2023