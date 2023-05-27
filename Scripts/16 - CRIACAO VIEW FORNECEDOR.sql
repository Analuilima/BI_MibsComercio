
USE COMERCIO_DW;
GO

-- CRIANDO UMA VIEW PARA RELAT�RIO DE FORNECEDORES

CREATE VIEW V_ANALISE_FORNECEDOR
AS
	SELECT FN.NOME AS FORNECEDOR,
		   T.ANO AS ANO,
		   SUM(F.QUANTIDADE) AS QUANTIDADE,
		   SUM(F.TOTAL_ITEM) AS TOTAL_VENDIDO

	FROM COMERCIO_STAGE.DBO.ST_FATO F

	INNER JOIN COMERCIO_DW.[dbo].[DIM_FORNECEDOR] FN
	ON F.IDFORNECEDOR = FN.IDFORNECEDOR

	INNER JOIN COMERCIO_DW.DBO.DIM_TEMPO T
	ON (CONVERT(VARCHAR, T.DATA,102) =
	CONVERT(VARCHAR, F.DATA,102))

	GROUP BY FN.NOME, T.ANO
	GO

	
	