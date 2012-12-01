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
    NUMCHLD,
    INCOME,
    GENDER,
    WEALTH1,
    HIT,
    MAJOR,
    WEALTH2,
    ADATE_2,
    RFA_2,
    RAMNTALL,
    NGIFTALL,
    AVGGIFT,
    TARGET_B,
    TARGET_D FROM
    kdd98
ORDER BY (SELECT RAND())
LIMIT 2000);