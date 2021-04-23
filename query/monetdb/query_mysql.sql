SELECT sysdate(6);
SELECT count(*) FROM voyages;
SELECT sysdate(6);

SELECT sysdate(6);
SELECT chamber, AVG(invoice) AS average
FROM invoices
WHERE invoice IS NOT NULL
GROUP BY chamber;
SELECT sysdate(6);

SELECT sysdate(6);
SELECT type, COUNT(*) AS total 
FROM onboard_people GROUP BY type ORDER BY type;
SELECT sysdate(6);

SELECT sysdate(6);
SELECT count(*) FROM impotenten;
SELECT sysdate(6);

SELECT sysdate(6);
SELECT COUNT(*) FROM voyages
WHERE particulars LIKE '%_recked%';
SELECT sysdate(6);

SELECT sysdate(6);
SELECT type, COUNT(*) AS total 
FROM onboard_people GROUP BY type ORDER BY type;
SELECT sysdate(6);
