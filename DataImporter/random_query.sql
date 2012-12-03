/* This query does the sampling for our data set.
 * It selects 2000 random rows and the columns 
 * we selected for our data mining purposes.
 */
 DROP TABLE sample;
CREATE TABLE sample AS (SELECT 
	ID,
    ODATEDW,
    TCODE,
    PVASTATE,
    DOB,
    RECINHSE,
    RECP3,
    DOMAIN,
    AGE,
    HOMEOWNR,
    INCOME,
    GENDER,
    WEALTH1,
    HIT,
    WEALTH2,
    ADATE_2,
    RFA_2,
    RAMNTALL,
    NGIFTALL,
    AVGGIFT,
    TARGET_B,
FROM
    kdd98
WHERE ODATEDW <> '' AND DOB <> '' AND DOMAIN <> '' AND AGE <> '' AND HOMEOWNR <> '' AND INCOME <> '' 
ORDER BY (SELECT RAND())
LIMIT 2000);