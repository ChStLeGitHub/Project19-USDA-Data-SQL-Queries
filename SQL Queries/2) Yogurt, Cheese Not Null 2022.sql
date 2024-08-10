-- Find the total yogurt production for states that also produced cheese in 2022.

SELECT SUM(DISTINCT(yogurt_production.Value)) AS Total_Yogurt_2022

FROM yogurt_production

JOIN cheese_production 
	 ON cheese_production.State_ANSI = yogurt_production.State_ANSI 
	 AND cheese_production.Year = 2022 
	 AND yogurt_production.Year = 2022

WHERE cheese_production.Value IS NOT NULL