CREATE DATABASE SQL_Indicator_Project;
USE SQL_Indicator_Project;

CREATE TABLE IF NOT EXISTS DATA_2015 (
  Country VARCHAR(255),
  Region VARCHAR(255),
  Happiness_Rank INT,
  Happiness_Score FLOAT,
  Standard_Error FLOAT,
  Economy_GDP_per_Capita FLOAT,
  Family FLOAT,
  Health_Life_Expectancy FLOAT,
  Freedom FLOAT,
  Trust_Government_Corruption FLOAT,
  Generosity FLOAT,
  Dystopia_Residual FLOAT
);


CREATE TABLE IF NOT EXISTS DATA_2016 (
  Country VARCHAR(255),
  Region VARCHAR(255),
  Happiness_Rank INT,
  Happiness_Score FLOAT,
  Standard_Error FLOAT,
  Economy_GDP_per_Capita FLOAT,
  Family FLOAT,
  Health_Life_Expectancy FLOAT,
  Freedom FLOAT,
  Trust_Government_Corruption FLOAT,
  Generosity FLOAT,
  Dystopia_Residual FLOAT,
  Low_conf_Interval FLOAT,
  Up_conf_Interval FLOAT
);


CREATE TABLE IF NOT EXISTS DATA_2017 (
  Country VARCHAR(255),
  Region VARCHAR(255),
  Happiness_Rank INT,
  Happiness_Score FLOAT,
  Standard_Error FLOAT,
  Economy_GDP_per_Capita FLOAT,
  Family FLOAT,
  Health_Life_Expectancy FLOAT,
  Freedom FLOAT,
  Trust_Government_Corruption FLOAT,
  Generosity FLOAT,
  Dystopia_Residual FLOAT
);

CREATE TABLE IF NOT EXISTS DATA_2018 (
  Country VARCHAR(255),
  Region VARCHAR(255),
  Happiness_Rank INT,
  Happiness_Score FLOAT,
  Standard_Error FLOAT,
  Economy_GDP_per_Capita FLOAT,
  Family FLOAT,
  Health_Life_Expectancy FLOAT,
  Freedom FLOAT,
  Trust_Government_Corruption FLOAT,
  Generosity FLOAT,
  Dystopia_Residual FLOAT
);


CREATE TABLE IF NOT EXISTS DATA_2019 (
  Country VARCHAR(255),
  Region VARCHAR(255),
  Happiness_Rank INT,
  Happiness_Score FLOAT,
  Standard_Error FLOAT,
  Economy_GDP_per_Capita FLOAT,
  Family FLOAT,
  Health_Life_Expectancy FLOAT,
  Freedom FLOAT,
  Trust_Government_Corruption FLOAT,
  Generosity FLOAT,
  Dystopia_Residual FLOAT
);

CREATE TABLE IF NOT EXISTS DATA_2020 (
  Country VARCHAR(255),
  Region VARCHAR(255),
  Happiness_Rank INT,
  Happiness_Score FLOAT,
  Standard_Error FLOAT,
  Economy_GDP_per_Capita FLOAT,
  Family FLOAT,
  Health_Life_Expectancy FLOAT,
  Freedom FLOAT,
  Trust_Government_Corruption FLOAT,
  Generosity FLOAT,
  Dystopia_Residual FLOAT
);

CREATE TABLE IF NOT EXISTS DATA_2021 (
  Country VARCHAR(255),
  Region VARCHAR(255),
  Happiness_Rank INT,
  Happiness_Score FLOAT,
  Standard_Error FLOAT,
  Economy_GDP_per_Capita FLOAT,
  Family FLOAT,
  Health_Life_Expectancy FLOAT,
  Freedom FLOAT,
  Trust_Government_Corruption FLOAT,
  Generosity FLOAT,
  Dystopia_Residual FLOAT
);

CREATE TABLE IF NOT EXISTS DATA_2022 (
  Country VARCHAR(255),
  Region VARCHAR(255),
  Happiness_Rank INT,
  Happiness_Score FLOAT,
  Standard_Error FLOAT,
  Economy_GDP_per_Capita FLOAT,
  Family FLOAT,
  Health_Life_Expectancy FLOAT,
  Freedom FLOAT,
  Trust_Government_Corruption FLOAT,
  Generosity FLOAT,
  Dystopia_Residual FLOAT
);

CREATE TABLE Countries (
    Country VARCHAR(50) NULL,
    Region VARCHAR(50) NULL
);

INSERT INTO countries (Country, Region)
SELECT Country, Region
FROM data_2015
UNION
SELECT Country, Region
FROM data_2016
UNION
SELECT Country, Region
FROM data_2017
UNION
SELECT Country, Region
FROM data_2018
UNION
SELECT Country, Region
FROM data_2019
UNION
SELECT Country, Region
FROM data_2020
UNION
SELECT Country, Region
FROM data_2021
UNION
SELECT Country, Region
FROM data_2022;

/* Combining */
CREATE TABLE Table1 (
    Year INT,
    Country VARCHAR(50) NULL,
    Region VARCHAR(50) NULL,
    Happy_rank INT,
    Happy_score DECIMAL(6,3),
    Economy DECIMAL(7,5),
    Family DECIMAL(7,5),
    Health DECIMAL(7,5),
    Freedom DECIMAL(7,5),
    Trust DECIMAL(7,5),
    Generosity DECIMAL(7,5),
    Dystopia DECIMAL(7,5)
);

INSERT INTO Table1
SELECT YEAR('2015-01-01') as Year, Country, Region, Happiness_Rank, Happiness_Score, Economy_GDP_per_Capita, Family,
       Health_Life_Expectancy, Freedom, Trust_Government_Corruption, Generosity, Dystopia_Residual
FROM DATA_2015
UNION ALL
SELECT YEAR('2016-01-01') as Year, Country, Region, Happiness_Rank, Happiness_Score, Economy_GDP_per_Capita, Family,
       Health_Life_Expectancy, Freedom, Trust_Government_Corruption, Generosity, Dystopia_Residual
FROM DATA_2016
UNION ALL
SELECT YEAR('2017-01-01') as Year, Country, Region, Happiness_Rank, Happiness_Score, Economy_GDP_per_Capita, Family,
       Health_Life_Expectancy, Freedom, Trust_Government_Corruption, Generosity, Dystopia_Residual
FROM DATA_2017
UNION ALL
SELECT YEAR('2018-01-01') as Year, Country, Region, Happiness_Rank, Happiness_Score, Economy_GDP_per_Capita, Family,
       Health_Life_Expectancy, Freedom, Trust_Government_Corruption, Generosity, Dystopia_Residual
FROM DATA_2018
UNION ALL
SELECT YEAR('2019-01-01') as Year, Country, Region, Happiness_Rank, Happiness_Score, Economy_GDP_per_Capita, Family,
       Health_Life_Expectancy, Freedom, Trust_Government_Corruption, Generosity, Dystopia_Residual
FROM DATA_2019
UNION ALL
SELECT YEAR('2020-01-01') as Year, Country, Region, Happiness_Rank, Happiness_Score, Economy_GDP_per_Capita, Family,
       Health_Life_Expectancy, Freedom, Trust_Government_Corruption, Generosity, Dystopia_Residual
FROM DATA_2020
UNION ALL
SELECT YEAR('2021-01-01') as Year, Country, Region, Happiness_Rank, Happiness_Score, Economy_GDP_per_Capita, Family,
       Health_Life_Expectancy, Freedom, Trust_Government_Corruption, Generosity, Dystopia_Residual
FROM DATA_2021
UNION ALL
SELECT YEAR('2022-01-01') as Year, Country, Region, Happiness_Rank, Happiness_Score, Economy_GDP_per_Capita, Family,
       Health_Life_Expectancy, Freedom, Trust_Government_Corruption, Generosity, Dystopia_Residual
FROM DATA_2022
;

/* Creating final table */
CREATE TABLE F_Table (
    Year INT,
    Country VARCHAR(50) NULL,
    Region VARCHAR(50) NULL,
    Happy_rank INT,
    Happy_score DECIMAL(6,3),
    Economy DECIMAL(7,5),
    Family DECIMAL(7,5),
    Health DECIMAL(7,5),
    Freedom DECIMAL(7,5),
    Trust DECIMAL(7,5),
    Generosity DECIMAL(7,5),
    Dystopia DECIMAL(7,5)
);


INSERT INTO F_Table
SELECT Year, country, region, happy_rank, happy_score, economy, family, health, freedom, trust, generosity, dystopia
FROM Table1;


/* Q1. Find the top 10 countries with the highest average Happiness Score across all years.*/
SELECT Country, AVG(Happy_score) AS Average_Happiness_Score
FROM F_TABLE
GROUP BY Country
ORDER BY Average_Happiness_Score DESC
LIMIT 10;

/* 	Q2. Calculate the total count of unique regions in the "Countries" table. */
SELECT COUNT(DISTINCT Region) AS Total_Unique_Regions
FROM Countries;

/* Q3. Calculate the average, minimum, and maximum Economy (GDP per Capita) values for each region in the year 2018.*/
SELECT Year,
       Region,
       AVG(Economy) AS Avg_Economy,
       MIN(Economy) AS Min_Economy,
       MAX(Economy) AS Max_Economy
FROM F_TABLE
GROUP BY Year, region;

/* Q4. List the countries and their respective regions that experienced an increase in Happiness Rank from the year 2015 to 2022.  */
SELECT c1.Country, c1.Region, c1.Happy_rank AS Rank_2015, c2.Happy_rank AS Rank_2022
FROM F_TABLE c1
JOIN F_TABLE c2 ON c1.Country = c2.Country 
WHERE c1.Year = 2015 AND c2.Year = 2022 AND c1.Happy_rank > c2.Happy_rank;

/* Q5. List the countries and their respective regions that had a decrease in Happiness Score for three consecutive years from 2018 to 2020.*/
SELECT c1.Country, c1.Happy_score AS Score_2018, c2.Happy_score AS Score_2019, c3.Happy_score AS Score_2020
FROM F_TABLE c1
JOIN F_TABLE c2 ON c1.Country = c2.Country 
JOIN F_TABLE c3 ON c1.Country = c3.Country 
WHERE c1.Year = 2018 AND c2.Year = 2019 AND c3.Year = 2020
  AND c1.Happy_score > c2.Happy_score AND c2.Happy_score > c3.Happy_score;
  
  /* Q6. Calculate the difference in Happiness Score between the highest and lowest scoring years for each country. */
SELECT Country, MAX(Happy_score) - MIN(Happy_score) AS Score_Difference
FROM F_TABLE
GROUP BY Country;

/* Q7. List the top 3 countries with the highest average Economy (GDP per Capita) for each region */
SELECT Region, Country, Avg_Economy
FROM (
  SELECT Region, Country, Economy, 
         RANK() OVER (PARTITION BY Region ORDER BY Economy DESC) AS Ranking,
         AVG(Economy) OVER (PARTITION BY Region) AS Avg_Economy
  FROM F_TABLE
) AS ranked_data
WHERE Ranking <= 3;

/* Q8.Find the countries where the Trust in Government Corruption has been consistently above 0.5 for all years. */
SELECT Country, AVG(Trust) AS Avg_Trust
FROM F_TABLE
GROUP BY Country
HAVING MIN(Trust) > 0.3;

/* Q8. List the countries that experienced a drop in Happiness Rank in 2022 compared to the 2015 and had an increase in Happiness Score.  */
SELECT c1.Country, c1.Happy_rank AS Rank_2015, c2.Happy_rank AS Rank_2022,
       c1.Happy_score AS Score_2015, c2.Happy_score AS Score_2022
FROM F_TABLE c1
JOIN F_TABLE c2 ON c1.Country = c2.Country 
WHERE c1.Year = 2015 AND c2.Year = 2022
  AND c1.Happy_rank < c2.Happy_rank AND c1.Happy_score < c2.Happy_score;
  
  /* Q9. List the countries that experienced a drop in Happiness Rank in 2019 compared to the previous year and had an increase in Happiness Score.  */
SELECT c1.Country, c1.Happy_rank AS Rank_2018, c2.Happy_rank AS Rank_2019,
       c1.Happy_score AS Score_2018, c2.Happy_score AS Score_2019
FROM F_TABLE c1
JOIN F_TABLE c2 ON c1.Country = c2.Country 
WHERE c1.Year = 2018 AND c2.Year = 2019
  AND c1.Happy_rank < c2.Happy_rank AND c1.Happy_score < c2.Happy_score;
  
  /* Q10. List the countries that experienced a decrease in Happiness Score in 2020 compared to 2019, but an increase in Economy (GDP per Capita). */
SELECT Country, Region, Happy_score AS Score_2020, Economy AS Economy_2020
FROM F_TABLE c
WHERE Year = 2015
  AND Happy_score < (SELECT Happy_score FROM F_TABLE WHERE Country = c.Country AND Region = c.Region AND Year = 2020)
  AND Economy > (SELECT Economy FROM F_TABLE WHERE Country = c.Country AND Region = c.Region AND Year = 2020);
  
/* Q11. Display the countries that experienced an increase in Happiness Score from the year 2019 to 2022. Calculate the percentage increase and show the top 10 countries with the highest percentage increase:
sql */
SELECT Country, Percentage_Increase
FROM (
    SELECT Country,
           ((Happiness_2022 - Happiness_2019) / Happiness_2019) * 100 AS Percentage_Increase,
           ROW_NUMBER() OVER (ORDER BY ((Happiness_2022 - Happiness_2019) / Happiness_2019) DESC) AS ranking
    FROM (
        SELECT Country,
               MAX(CASE WHEN Year = 2019 THEN Happy_score END) AS Happiness_2019,
               MAX(CASE WHEN Year = 2022 THEN Happy_score END) AS Happiness_2022
        FROM F_TABLE
        WHERE Year IN (2019, 2022)
        GROUP BY Country
    ) AS subquery
) AS ranked
WHERE ranking <= 10;

/* Q11. Display the countries with Trust in Government Corruption (Trust) higher than the average Trust in their respective regions in the year 2015, along with their corresponding Happiness Score and Generosity: */
SELECT Country, Trust, Happy_score, Generosity
FROM F_TABLE c1
WHERE Year = 2015
  AND Trust > (SELECT AVG(Trust) FROM F_TABLE c2 WHERE c1.Region = c2.Region AND Year = 2015);

/* Q12. Find the top 5 regions with the highest average Health Life Expectancy in the year 2016, and for each region, display the country with the highest Health Life Expectancy and the corresponding average Happiness Score. */
SELECT Region, Country, Max_Health_2016, Avg_Happiness_2016
FROM (
    SELECT sub.*,
           ROW_NUMBER() OVER (PARTITION BY sub.Region ORDER BY sub.Max_Health_2016 DESC) AS ranking
    FROM (
        SELECT Region, Country,
               MAX(Health) AS Max_Health_2016,
               AVG(Happy_score) AS Avg_Happiness_2016
        FROM F_TABLE
        WHERE Year = 2016
        GROUP BY Region, Country
    ) AS sub
) AS ranked
WHERE ranking <= 5;

/*Q13. Analyzes the relationship between Health Life Expectancy and Economy (GDP per Capita) for each region. It calculates the correlation coefficient between these two factors, along with the average Health Life Expectancy and average Economy for each region: */
SELECT Region,
       COUNT(*) AS Num_Countries,
       AVG(Health) AS Avg_Health_Life_Expectancy,
       AVG(Economy) AS Avg_Economy,
       SUM((Health - Avg_Health) * (Economy - Avg_Economy)) / (COUNT(*) * STDDEV(Health) * STDDEV(Economy)) AS Correlation
FROM (
    SELECT Region, Country, Health, Economy,
           AVG(Health) OVER (PARTITION BY Region) AS Avg_Health,
           AVG(Economy) OVER (PARTITION BY Region) AS Avg_Economy
    FROM F_TABLE
) AS subquery
GROUP BY Region;

/* Q14. Analyzes the relationship between Freedom and Happiness Score for each region. It calculates the correlation coefficient between these two factors, along with the average Freedom and average Happiness Score for each region: */
SELECT Region,
       COUNT(*) AS Num_Countries,
       AVG(Freedom) AS Avg_Freedom,
       AVG(Happy_score) AS Avg_Happiness_Score,
       SUM((Freedom - Avg_Freedom) * (Happy_score - Avg_Happiness_Score)) / (COUNT(*) * STDDEV(Freedom) * STDDEV(Happy_score)) AS Correlation
FROM (
    SELECT Region, Country, Freedom, Happy_score,
           AVG(Freedom) OVER (PARTITION BY Region) AS Avg_Freedom,
           AVG(Happy_score) OVER (PARTITION BY Region) AS Avg_Happiness_Score
    FROM F_TABLE
) AS subquery
GROUP BY Region;


/*Q15. Find the countries where the Happiness Score increased by at least 0.5 points from 2015 to 2022, and list the percentage increase. */
SELECT A.Country,
       A.Happy_score AS Score_2015,
       B.Happy_score AS Score_2022,
       ((B.Happy_score - A.Happy_score) / A.Happy_score) * 100 AS Increase_Percentage
FROM F_Table A
JOIN F_Table B ON A.Country = B.Country AND A.Year = 2015 AND B.Year = 2022
WHERE B.Happy_score - A.Happy_score >= 0.5;



/*Q16. Identify countries where the standard deviation of the Happiness Score across all years is less than 1, indicating relatively stable happiness levels. */
SELECT Country
FROM (
    SELECT Country, STDDEV_POP(Happy_score) AS Score_StdDev
    FROM F_Table
    GROUP BY Country
) Subquery
WHERE Score_StdDev < 1;



/*Q17. Calculate the number of countries that maintained the same Happiness Rank from 2017 to 2022. */
SELECT Country, COUNT(*) AS Stable_Rank_Count
FROM (
    SELECT A.Country
    FROM F_Table A
    JOIN F_Table B ON A.Country = B.Country AND A.Year = 2017 AND B.Year = 2022
    WHERE A.Happy_rank = B.Happy_rank
) Subquery
GROUP BY Country;

/*Q18. Identify countries where the trend of Happiness Score reversed (increased after decreasing or vice versa) from 2018 to 2021. */
SELECT A.Country,
       A.Happy_score AS Score_2018,
       B.Happy_score AS Score_2021
FROM F_Table A
JOIN F_Table B ON A.Country = B.Country AND A.Year = 2018 AND B.Year = 2021
WHERE (A.Happy_score < B.Happy_score AND B.Happy_score > (
        SELECT Happy_score
        FROM F_Table
        WHERE Country = A.Country AND Year = 2022
    ))
    OR (A.Happy_score > B.Happy_score AND B.Happy_score < (
        SELECT Happy_score
        FROM F_Table
        WHERE Country = A.Country AND Year = 2022
    ));



  
  



