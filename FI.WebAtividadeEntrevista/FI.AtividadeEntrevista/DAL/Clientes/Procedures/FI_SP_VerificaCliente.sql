CREATE PROC FI_SP_VerificaCliente  
 @CPF VARCHAR(14)  
AS  
BEGIN  

 SELECT @CPF = REPLACE(REPLACE(REPLACE(REPLACE(@CPF, '.', ''), '-', ''), '_', ''), ' ', '')

 SELECT 1 FROM CLIENTES WHERE CPF = @CPF  
END