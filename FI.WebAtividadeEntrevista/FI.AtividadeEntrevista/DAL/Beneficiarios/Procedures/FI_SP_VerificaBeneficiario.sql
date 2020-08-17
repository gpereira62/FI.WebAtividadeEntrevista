CREATE PROC FI_SP_VerificaBeneficiario 
 @CPF VARCHAR(14)  
AS  
BEGIN  

 SELECT @CPF = REPLACE(REPLACE(REPLACE(REPLACE(@CPF, '.', ''), '-', ''), '_', ''), ' ', '')

 SELECT 1 FROM BENEFICIARIOS WHERE CPF = @CPF  
END