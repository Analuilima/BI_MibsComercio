
USE COMERCIO_OLTP;
GO

SELECT * FROM CATEGORIA;
GO

SELECT * FROM CLIENTE;
GO

SELECT * FROM ENDERECO;
GO

SELECT * FROM FORNECEDOR;
GO

SELECT * FROM PRODUTO;
GO

SELECT * FROM VENDEDOR;
GO

SELECT * FROM FORMA_PAGAMENTO;
GO

SELECT * FROM NOTA_FISCAL;
GO -- 7700

SELECT * FROM ITEM_NOTA;
GO


-- Query de um auto relacionamento 
SELECT V.IDVENDEDOR,
	   V.NOME AS GERENTE,
	   G.NOME AS VENDEDOR,
	   G.SEXO,
	   G.IDVENDEDOR
FROM VENDEDOR V
INNER JOIN VENDEDOR G
ON V.IDVENDEDOR = G.ID_GERENTE;
GO



