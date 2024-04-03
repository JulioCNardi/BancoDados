SELECT 
	NF.NM_CLIENTE,
	SUM(INF.VL_TOTAL)
FROM
	NOTA_FISCAL AS NF,
    ITEM_NOTA_FISCAL AS INF
WHERE
	NF.NRO_NOTA = INF.NRO_NOTA	
GROUP BY 
	NF.NM_CLIENTE