SELECT * FROM(
	SELECT 'Febre' AS "Doença", COUNT(febre) AS "Quantidade"
	FROM public.sintomas sint
	INNER JOIN public.dados_epidemi epi ON epi.id_epidemi = sint.id_sintomas
	WHERE febre = '1' AND epi.surto_sg = '1'
	
	UNION ALL
	SELECT 'Tosse' AS "Doença", COUNT(tosse) AS "Quantidade"
	FROM public.sintomas sint
	INNER JOIN public.dados_epidemi epi ON epi.id_epidemi = sint.id_sintomas
	WHERE tosse = '1' AND epi.surto_sg = '1'
		
	UNION ALL
	SELECT 'Dor de Garganta' AS "Doença", COUNT(garganta) AS "Quantidade"
	FROM public.sintomas sint
	INNER JOIN public.dados_epidemi epi ON epi.id_epidemi = sint.id_sintomas
	WHERE garganta = '1' AND epi.surto_sg = '1'
		
	UNION ALL
	SELECT 'Dispneia' AS "Doença", COUNT(dispneia) AS "Quantidade"
	FROM public.sintomas sint
	INNER JOIN public.dados_epidemi epi ON epi.id_epidemi = sint.id_sintomas
	WHERE dispneia = '1' AND epi.surto_sg = '1'
		
	UNION ALL
	SELECT 'Desconforto Respiratório' AS "Doença", COUNT(desc_resp) AS "Quantidade"
	FROM public.sintomas sint
	INNER JOIN public.dados_epidemi epi ON epi.id_epidemi = sint.id_sintomas
	WHERE desc_resp = '1' AND epi.surto_sg = '1'
		
	UNION ALL
	SELECT 'Saturacao' AS "Doença", COUNT(saturacao) AS "Quantidade"
	FROM public.sintomas sint
	INNER JOIN public.dados_epidemi epi ON epi.id_epidemi = sint.id_sintomas
	WHERE saturacao = '1' AND epi.surto_sg = '1'
		
	UNION ALL
	SELECT 'Diarreia' AS "Doença", COUNT(diarreia) AS "Quantidade"
	FROM public.sintomas sint
	INNER JOIN public.dados_epidemi epi ON epi.id_epidemi = sint.id_sintomas
	WHERE diarreia = '1' AND epi.surto_sg = '1'
		
	UNION ALL
	SELECT 'Vômito' AS "Doença", COUNT(vomito) AS "Quantidade"
	FROM public.sintomas sint
	INNER JOIN public.dados_epidemi epi ON epi.id_epidemi = sint.id_sintomas
	WHERE vomito = '1' AND epi.surto_sg = '1'
	
	UNION ALL
	SELECT 'Dor Abdominal' AS "Doença", COUNT(dor_abd) AS "Quantidade"
	FROM public.sintomas sint
	INNER JOIN public.dados_epidemi epi ON epi.id_epidemi = sint.id_sintomas
	WHERE dor_abd = '1' AND epi.surto_sg = '1'
		
	UNION ALL
	SELECT 'Fadiga' AS "Doença", COUNT(fadiga) AS "Quantidade"
	FROM public.sintomas sint
	INNER JOIN public.dados_epidemi epi ON epi.id_epidemi = sint.id_sintomas
	WHERE fadiga = '1' AND epi.surto_sg = '1'
		
	UNION ALL
	SELECT 'Perda do Olfato' AS "Doença", COUNT(perd_olft) AS "Quantidade"
	FROM public.sintomas sint
	INNER JOIN public.dados_epidemi epi ON epi.id_epidemi = sint.id_sintomas
	WHERE perd_olft = '1' AND epi.surto_sg = '1'
		
	UNION ALL
	SELECT 'Perda de Paladar' AS "Doença", COUNT(perd_pala) AS "Quantidade"
	FROM public.sintomas sint
	INNER JOIN public.dados_epidemi epi ON epi.id_epidemi = sint.id_sintomas
	WHERE perd_pala = '1' AND epi.surto_sg = '1'
			
	UNION ALL
	SELECT 'Outros' AS "Doença", COUNT(outro_sin) AS "Quantidade"
	FROM public.sintomas sint
	INNER JOIN public.dados_epidemi epi ON epi.id_epidemi = sint.id_sintomas
	WHERE outro_sin = '1' AND epi.surto_sg = '1'
) AS sint
ORDER BY "Quantidade" DESC
LIMIT 3