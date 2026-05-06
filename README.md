Script de Análise de Logs Apache2

Este repositório contém um script em Bash para análise de logs do servidor Apache2.  
O objetivo é identificar padrões que podem indicar tentativas de ataque ou acessos suspeitos.

  Funcionalidades:
       Uso: ./script.sh <Opcao> <Arquivo de log>
       Ex: ./redscan3-1.sh -a access.log
       OPÇÕES DE USO:
      -a - Detectar possíveis ataques de XSS (Cross-Site Scripting)
      -b - Detectar tentativas de SQL Injection
      -c - Detectar varredura de diretórios (Directory Traversal)
      -d - Detectar possíveis ataques por scanners (User-Agent suspeito)
      -e - Identificar tentativas de acesso a arquivos sensíveis
      -f - Detectar possíveis ataques de força bruta a arquivos/pastas
      -g - Primeiro e ultimo acesso de um IP suspeito
      -h - Localizar user-agent utilizado por um IP suspeito
      -i - Listar os ips e verificar quantidade de requisições
      -j - Localizar acesso a um determinado arquivo sensível
      =====IMPORTANTE===== 
      Passar o IP para as opcões -g e -h
      Ex:./redscan3-1.sh <OPCÃO> <IP> <ARQUIVO_DE_LOG>

Como usar
1. Clone este repositório:
git clone https://github.com/DBTxx/RA-script.git

Dê permissão de execução ao script:
chmod +x redscan3-1.sh
Execute passando a opção desejada:

Execução
./redscan3-1.sh -a <ARQUIVO DE LOG>
(onde -a corresponde à análise de XSS, por exemplo)

Arquivo de log access.log do Apache2

Autor
Desenvolvido por Diego para a disciplina de Análise de logs e shellscript – RedScan Academy - Turma-12.
