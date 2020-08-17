CREATE PROC FI_SP_AltBeneficiario
    @NOME          VARCHAR (50),
    @CPF           VARCHAR (14),
	@IDCLIENTE     BIGINT,
	@Id            BIGINT
AS
BEGIN

    SELECT @CPF = REPLACE(REPLACE(REPLACE(REPLACE(@CPF, '.', ''), '-', ''), '_', ''), ' ', '')

	UPDATE BENEFICIARIOS 
	SET 
		NOME = @NOME, 
		CPF = @CPF
	WHERE Id = @Id
END