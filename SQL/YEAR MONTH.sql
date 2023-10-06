--v kakom mesyze kakogo goda bilo bolshe vsego zakazov

SELECT TOP (1) WITH TIES Year (Date_zakaz) AS God,Month (Date_zakaz) AS Mesyaz
FROM Zakazy
GROUP BY Year (Date_zakaz) ,Month (Date_zakaz)
ORDER BY COUNT (*) DESC