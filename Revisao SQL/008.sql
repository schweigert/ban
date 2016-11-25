select cp1."filme", cp1."id", cp2."id"
FROM copias cp1 JOIN copias cp2 
ON cp1."filme" = cp2."filme"
WHERE cp1."id" > cp2."id"