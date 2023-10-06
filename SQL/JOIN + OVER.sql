-- Poluchit inf v razbivke po godam i produktam summy (okonnaya funkcoya OVER()):



SELECT Year (Z.Date_Zakaz) AS YEAR, Z.ID_tovar,  T.Name_tovar, COUNT (Z.ID_tovar) AS KOL_SDELOK, Z.Kolichestvo, T.Zena, SUM ( T.Zena*Z.Kolichestvo)  AS SUMMA, SUM (SUM ( T.Zena*Z.Kolichestvo)) over() AS SUMMA_SDELOK
FROM Zakazy Z INNER JOIN Tovar T ON Z.[ID_tovar] = T.[ID_tovar]
--GROUP BY  Z.ID_tovar, Year (Z.Date_Zakaz), Z.ID_tovar, T.Name_tovar,  Z.Kolichestvo, T.Zena, T.Zena*Z.Kolichestvo
--WHERE Year (Z.Date_Zakaz) = 2022
Group By   Year (Z.Date_Zakaz),Z.ID_tovar,  T.Name_tovar,Z.Kolichestvo, T.Zena, T.Zena*Z.Kolichestvo

--proverka:

SELECT SUM (Z.Kolichestvo*T.Zena) AS SUMMA_SDELOK
FROM Zakazy Z LEFT JOIN Tovar T ON Z.ID_Tovar = T.ID_Tovar

