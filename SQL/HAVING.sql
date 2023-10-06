--u kakogo klienta bolshe 2 zakazov v 2022 godu:

SELECT ID_Client, Count (*)
FROM Zakazy
WHERE year (Date_zakaz) = 2022
GROUP BY ID_Client
HAVING Count (*) >2