SELECT 'SARS-CoV-2' AS "Doença",count(pcr_resul) AS "Quantidade Positivo"
FROM dados_laboratorio 
WHERE res_igg = '1' OR res_igm= '1' OR res_iga = '1' OR an_sars2 = '1' OR pcr_sars2 = '1'