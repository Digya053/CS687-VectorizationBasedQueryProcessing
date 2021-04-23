SELECT NOW();
SELECT count(*) FROM voyages;
SELECT NOW();

SELECT NOW();
SELECT chamber, AVG(invoice) AS average
FROM invoices
WHERE invoice IS NOT NULL
GROUP BY chamber;
SELECT NOW();

SELECT NOW();
SELECT type, COUNT(*) AS total 
FROM onboard_people GROUP BY type ORDER BY type;
SELECT NOW();

SELECT NOW();
SELECT count(*) FROM impotenten;
SELECT NOW();

SELECT NOW();
SELECT COUNT(*) FROM voyages
WHERE particulars LIKE '%_recked%';
SELECT NOW();

SELECT NOW();
SELECT type, COUNT(*) AS total 
FROM onboard_people GROUP BY type ORDER BY type;
SELECT NOW();
