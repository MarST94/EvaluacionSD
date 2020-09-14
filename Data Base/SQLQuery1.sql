Consultas
*Realizar un script SQL para determinar cuántos puestos hay por empresa*
Select em.Nombre, Count(PuestoID)
From TblPuestos as pue INNER JOIN TblEmpresas as em
ON pue.EmpresaID=em.EmpresaID
GROUP BY pue.EmpresaID, em.Nombre

*Realizar una script SQL para modificar el nombre incorrecto de la empresa 01*
UPDATE TblEmpresas
 SET Nombre='Empresa de Evaluaciones'
 WHERE EmpresaCodigo=01

*Realizar un script SQL para determinar cuántos puestos están activos por empresa*
Select em.Nombre, Count(PuestoID)
From TblPuestos as pue INNER JOIN TblEmpresas as em
ON pue.EmpresaID=em.EmpresaID
WHERE pue.FechaDeBaja is NULL
GROUP BY pue.EmpresaID, em.Nombre

*Realizar un script SQL para determinar el porcentaje de puestos con fecha de baja en relación con el total por empresa*
Select em.Nombre, Count(PuestoID)*100 /(Select Count(*) From TblPuestos) as Porcentaje
From TblPuestos as pue INNER JOIN TblEmpresas as em
ON pue.EmpresaID=em.EmpresaID
WHERE pue.FechaDeBaja IS NOT NULL
GROUP BY pue.EmpresaID, em.Nombre

