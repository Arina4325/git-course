--zakazy sdelannie vesniy 2021 goda

--Rabotaet NO plohoy zapros (povtoryaetsya odin i tot zhe kod!!):
SELECT ID_tovar, Date_zakaz
FROM Zakazy
WHERE Year (Date_zakaz) = '2021' AND (Month (Date_zakaz) = 3 OR Month (Date_zakaz)=4 OR Month (Date_zakaz) = 5)

--vazhno - skobki!!! inache posledovatelnost operazii ne pravilnaya

--horoshiy zapros:
SELECT ID_tovar, Date_zakaz
FROM Zakazy
WHERE Date_zakaz >= '2021-03-02' AND Date_zakaz <= '2021-05-02'

--tozhe ok (BETWEEN):
SELECT ID_tovar, Date_zakaz
FROM Zakazy
WHERE Year (Date_zakaz) = '2021' AND Month (Date_zakaz) BETWEEN 3 AND 5

--i eshe luchshe (IN):
SELECT ID_tovar, Date_zakaz
FROM Zakazy
WHERE Year (Date_zakaz) = '2021' AND Month (Date_zakaz) IN (3,4,5)
