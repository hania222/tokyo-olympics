--count number of athletes from each country
SELECT Country, count(*) AS TotalAthletes
FROM athletes
Group By Country
ORDER By TotalAthletes Desc

--calculate the total medals won by each country
SELECT TeamCountry, 
SUM(Gold) TotalGold,
Sum(Silver) TotalSilver,
Sum(Bronze) TotalBronze
FROM medals
GROUP BY TeamCountry
ORDER BY TotalGold DESC

--calculate the average number of entries for each discpline 
SELECT Discipline,
AVG(Female) Avg_female,
AVG(Male) Avg_Male
FROM entriesgender

GROUP BY Discipline 
