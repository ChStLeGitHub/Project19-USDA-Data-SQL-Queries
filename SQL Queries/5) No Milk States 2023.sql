-- List all states from state_lookup that are missing from milk_production in 2023.

SELECT 
	state_lookup.State_ANSI, state_lookup.State,
	milk_production.Value AS Milk_2023

FROM
	milk_production RIGHT JOIN state_lookup
	ON milk_production.State_ANSI = state_lookup.State_ANSI
		AND milk_production.Year = 2023	

WHERE milk_production.State_ANSI IS NULL