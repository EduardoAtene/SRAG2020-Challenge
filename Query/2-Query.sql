SELECT d.pais_vgm AS "Pais",COUNT(d.pais_vgm) AS "Quantidade" from dados_epidemi d
INNER JOIN paciente paci ON paci.id_paciente = d.id_epidemi
GROUP BY d.pais_vgm ORDER BY COUNT(d.pais_vgm) DESC
LIMIT 3