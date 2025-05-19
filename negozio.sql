SELECT * 
FROM clienti
WHERE nome = 'Mario';

SELECT Nome, Cognome
FROM clienti
WHERE anno_nascita = 1982;

SELECT COUNT(*) as numero_fatture
FROM fatture
WHERE iva = 20.00;

SELECT *
FROM prodotti
WHERE EXTRACT(YEAR FROM data_attivazione) = 2017
AND (in_produzione = TRUE OR in_commercio = TRUE);

SELECT *
FROM fatture f, clienti c
WHERE f.id_cliente = c.numero_cliente
AND f.importo < 1000;

select *
FROM fatture f, fornitori fo
WHERE f.numero_fornitore = fo.numero_fornitore;

SELECT EXTRACT(YEAR FROM data_fatture) as anno,COUNT(*)
FROM fatture
WHERE iva = 20
GROUP BY 
anno;

SELECT EXTRACT(YEAR FROM data_fatture) as anno,COUNT(*), sum(importo) as somma_importi
FROM fatture
GROUP BY 
anno;

SELECT EXTRACT(YEAR FROM data_fattura) AS anno
FROM fatture
WHERE tipologia = 'A'
GROUP BY anno 
HAVING COUNT(*) > 2
ORDER BY anno;

SELECT sum(f.importo) as totale_fatture, regione_residenza
FROM fatture f, clienti c
WHERE f.id_cliente = c.numero_cliente
GROUP BY c.regione_residenza;





