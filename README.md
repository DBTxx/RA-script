Script de Análise de Logs Apache2

Este repositório contém um script em Bash para análise de logs do servidor Apache2.  
O objetivo é identificar padrões que podem indicar tentativas de ataque ou acessos suspeitos.

  Funcionalidades:
      1 - Detectar possíveis ataques de XSS (Cross-Site Scripting)
      2 - Detectar tentativas de SQL Injection
      3 - Detectar varredura de diretórios (Directory Traversal)
      4 - Detectar possíveis ataques por scanners (User-Agent suspeito)
      5 - Identificar tentativas de acesso a arquivos sensíveis
      6 - Detectar possíveis ataques de força bruta a arquivos/pastas
      7 -  Primeiro e ultimo acesso de um IP suspeito
      8 - Localizar user-agent utilizado por um IP suspeito
      9 - Listar os ips e verificar o numero de requisições
      10 - Localizar acesso a um determinado arquivo sensível

Como usar
1. Clone este repositório:
git clone https://github.com/DBTxx/RA-script.git

Dê permissão de execução ao script:
chmod +x redscan3.sh
Execute passando a opção desejada:

Execução
./redscan3.sh 1
(onde 1 corresponde à análise de XSS, por exemplo)

Arquivo de log access.log do Apache2

Autor
Desenvolvido por Diego para a disciplina de Análise de logs e shellscript – RedScan Academy.
