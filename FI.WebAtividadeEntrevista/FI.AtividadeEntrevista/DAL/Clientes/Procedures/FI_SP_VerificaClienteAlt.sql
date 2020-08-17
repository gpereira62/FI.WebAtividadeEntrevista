﻿CREATE PROC FI_SP_VerificaClienteAlt  
 @CPF VARCHAR(14),
 @ID BIGINT
AS  
BEGIN  

 SELECT @CPF = REPLACE(REPLACE(REPLACE(REPLACE(@CPF, '.', ''), '-', ''), '_', ''), ' ', '')

 SELECT 1 FROM CLIENTES WHERE CPF = @CPF AND ID <> @ID
END