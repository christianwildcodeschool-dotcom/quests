# Fichier log Access.log

```
::1 - - [31/Jan/2026:11:46:52 +0100] "GET / HTTP/1.1" 200 10958 "-" "curl/8.14.1"
::1 - - [31/Jan/2026:11:46:52 +0100] "GET / HTTP/1.1" 200 10958 "-" "curl/8.14.1"
::1 - - [31/Jan/2026:11:46:52 +0100] "GET / HTTP/1.1" 200 10958 "-" "curl/8.14.1"
::1 - - [31/Jan/2026:11:46:52 +0100] "GET / HTTP/1.1" 200 10958 "-" "curl/8.14.1"
::1 - - [31/Jan/2026:11:46:52 +0100] "GET / HTTP/1.1" 200 10958 "-" "curl/8.14.1"
::1 - - [31/Jan/2026:11:46:52 +0100] "GET / HTTP/1.1" 200 10958 "-" "curl/8.14.1"
::1 - - [31/Jan/2026:11:46:52 +0100] "GET / HTTP/1.1" 200 10958 "-" "curl/8.14.1"
::1 - - [31/Jan/2026:11:46:52 +0100] "GET / HTTP/1.1" 200 10958 "-" "curl/8.14.1"
::1 - - [31/Jan/2026:11:46:52 +0100] "GET / HTTP/1.1" 200 10958 "-" "curl/8.14.1"
::1 - - [31/Jan/2026:11:46:52 +0100] "GET / HTTP/1.1" 200 10958 "-" "curl/8.14.1"
::1 - - [31/Jan/2026:11:47:00 +0100] "GET / HTTP/1.1" 200 10958 "-" "curl/8.14.1"
::1 - - [31/Jan/2026:11:47:00 +0100] "GET /test.html HTTP/1.1" 404 472 "-" "curl/8.14.1"
::1 - - [31/Jan/2026:11:47:00 +0100] "GET /page2.html HTTP/1.1" 404 472 "-" "curl/8.14.1"
::1 - - [31/Jan/2026:11:47:04 +0100] "GET /404test1 HTTP/1.1" 404 472 "-" "curl/8.14.1"
::1 - - [31/Jan/2026:11:47:04 +0100] "GET /404test2 HTTP/1.1" 404 472 "-" "curl/8.14.1"
::1 - - [31/Jan/2026:11:47:04 +0100] "GET /404test3 HTTP/1.1" 404 472 "-" "curl/8.14.1"
::1 - - [31/Jan/2026:11:47:04 +0100] "GET /404test4 HTTP/1.1" 404 472 "-" "curl/8.14.1"
::1 - - [31/Jan/2026:11:47:04 +0100] "GET /404test5 HTTP/1.1" 404 472 "-" "curl/8.14.1"
172.16.10.90 - - [31/Jan/2026:12:01:39 +0100] "GET / HTTP/1.1" 200 10958 "-" "curl/8.5.0"
172.16.10.90 - - [31/Jan/2026:12:01:39 +0100] "GET / HTTP/1.1" 200 10958 "-" "curl/8.5.0"
172.16.10.90 - - [31/Jan/2026:12:01:39 +0100] "GET / HTTP/1.1" 200 10958 "-" "curl/8.5.0"
172.16.10.90 - - [31/Jan/2026:12:01:39 +0100] "GET / HTTP/1.1" 200 10958 "-" "curl/8.5.0"
172.16.10.90 - - [31/Jan/2026:12:01:39 +0100] "GET / HTTP/1.1" 200 10958 "-" "curl/8.5.0"
172.16.10.90 - - [31/Jan/2026:12:01:39 +0100] "GET / HTTP/1.1" 200 10958 "-" "curl/8.5.0"
172.16.10.90 - - [31/Jan/2026:12:01:39 +0100] "GET / HTTP/1.1" 200 10958 "-" "curl/8.5.0"
172.16.10.90 - - [31/Jan/2026:12:01:39 +0100] "GET / HTTP/1.1" 200 10958 "-" "curl/8.5.0"
172.16.10.90 - - [31/Jan/2026:12:01:39 +0100] "GET / HTTP/1.1" 200 10958 "-" "curl/8.5.0"
172.16.10.90 - - [31/Jan/2026:12:01:39 +0100] "GET / HTTP/1.1" 200 10958 "-" "curl/8.5.0"
```


## Les ip identifiées :
> `::1` qui est le localhost  
> `172.16.10.90` qui est une machine distante

La commande `awk '{print $1}' /var/log/apache2/access.log | sort | uniq -c` permet le classement par ordre décroissant des adresses ip présentes dans le fichier log, soit :
  - 21 ::1
  - 13 172.16.10.90

## Filtrage des codes HTTP :

La commande `awk '$9 == 200' /var/log/apache2/access.log` permet un filtrage du code 200 dde la colonne des codes HTTP  
La commande `awk '$9 == 404' /var/log/apache2/access.log` permet un filtrage du code 404 dde la colonne des codes HTTP  


## Composition du fichier log : 

| Valeur | Description |
|--------|-------------|
| `172.16.10.90` | **Adresse IP du client** |
| `-` `-` | Identité et UserID  |
| `[31/Jan/2026:12:01:39 +0100]` | **Date et heure** avec fuseau horaire |
| `"GET / HTTP/1.1"` | **Requête HTTP**  |
| `200` | **Code HTTP**  |
| `10958` | **Taille de la réponse** en octets |
| `"-"` | **Referer**  |
| `"curl/8.5.0"` | **User-Agent** |
