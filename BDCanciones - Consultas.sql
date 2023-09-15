USE [BDCanciones]
--SELECT * 
--FROM Cancion 
--WHERE Genero IN ('ROMANTICAS', 'POP') 
 -- OR  id IN (1, 2)
--ORDER BY Genero,Titulo;


--SELECT Count(*) as Cantidad,Genero FROM Cancion GROUP BY Genero;

--SELECT SUM(
 --   DATEPART(SECOND, duracion) + 
 --   DATEPART(MINUTE, duracion) * 60 + 
--    DATEPART(HOUR, duracion) * 3600
--) AS duracion_total_segundos
--FROM Cancion;

--SELECT U.Nick, U.Nombre, U.Apellidos, COUNT(LR.Id) AS CantidadDeListas
--FROM Usuario as U
--LEFT JOIN ListaReproduccion as LR ON U.Nick = LR.NickUsuario
--GROUP BY U.Nick, U.Nombre, U.Apellidos;

---5
SELECT U.Nick, Count(LR.ID) as CantidadDeListas FROM Usuario as U
INNER JOIN ListaReproduccion as LR ON U.Nick = LR.NickUsuario
GROUP BY U.Nick
HAVING count(LR.ID) >=3;

--SELECT LR.NombreLista,Count(a.idCancion) AS CantidadCanciones FROM ListaReproduccion as LR
--INNER JOIN ListaReproduccionXCancion as a ON LR.ID = a.IdLista
--GROUP BY LR.NombreLista
 --ORDER BY CantidadCanciones DESC;

--SELECT TOP 3 * FROM Cancion ;

SELECT c.id as IdCancion, c.Titulo as TituloCancion, b.id as IdLista , b.NombreLista FROM Cancion as c
INNER JOIN ListaReproduccionXCancion as a ON c.id = a.idCancion
INNER JOIN ListaReproduccion as b ON b.id = a.idLista
WHERE c.Titulo = '¿Qué vas a hacer?';