-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE ObtenerVehiculo
	-- Add the parameters for the stored procedure here
	@Id uniqueIdentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT Vehiculos.Id, Vehiculos.IdModelo, Vehiculos.Placa, Vehiculos.Color, Vehiculos.Anio, Vehiculos.Precio, Vehiculos.CorreoPropietario, Vehiculos.TelefonoPropietario, Modelos.Id AS Expr1, Modelos.IdMarca, Modelos.Nombre, 
                  Marcas.Id AS Expr2, Marcas.Nombre AS Expr3, Vehiculos.Id AS Expr4, Vehiculos.IdModelo AS Expr5, Vehiculos.Placa AS Expr6, Vehiculos.Color AS Expr7, Vehiculos.Anio AS Expr8, Vehiculos.Precio AS Expr9, 
                  Vehiculos.CorreoPropietario AS Expr10, Vehiculos.TelefonoPropietario AS Expr11, Modelos.Nombre AS Modelo, Marcas.Nombre AS Marca
FROM     Vehiculos INNER JOIN
                  Modelos ON Vehiculos.IdModelo = Modelos.Id INNER JOIN
                  Marcas ON Modelos.IdMarca = Marcas.Id
WHERE  (Vehiculos.Id = @Id)
END