select cp1."filme", cp1."ID", cp2."ID"
FROM copias cp1 JOIN copias cp2 
ON cp1."filme" = cp2."filme"
WHERE cp1."ID" > cp2."ID"