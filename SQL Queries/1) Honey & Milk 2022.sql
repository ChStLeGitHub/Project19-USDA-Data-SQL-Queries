-- Find states where both honey and milk were produced in 2022.
-- Did State_ANSI "35" produce both honey and milk in 2022?

SELECT state_lookup.State_ANSI, state_lookup.State,
    
    CASE
        WHEN honey_production.Value IS NOT NULL AND milk_production.Value IS NOT NULL 
        THEN 'Yes'
        
        ELSE 'No'
    
        END AS Honey_and_Milk_2022

FROM state_lookup

LEFT JOIN (SELECT DISTINCT State_ANSI FROM honey_production WHERE honey_production.Year = 2022
		   UNION
		   SELECT DISTINCT State_ANSI FROM milk_production WHERE milk_production.Year = 2022) 

		   AS all_states ON state_lookup.State_ANSI = all_states.State_ANSI

LEFT JOIN honey_production ON honey_production.State_ANSI = state_lookup.State_ANSI AND honey_production.Year = 2022

LEFT JOIN milk_production ON milk_production.State_ANSI = state_lookup.State_ANSI AND milk_production.Year = 2022
    
GROUP BY state_lookup.State_ANSI