#!/bin/bash


banner()
{
      echo "Use: ./script.sh Opcao"
      echo "Ex: ./script1"
      echo ""
      echo "1 - Detectar possíveis ataques de XSS (Cross-Site Scripting)"
      echo "2 - Detectar tentativas de SQL Injection"
      echo "3 - Detectar varredura de diretórios (Directory Traversal)"
      echo "4 - Detectar possíveis ataques por scanners (User-Agent suspeito)"
      echo "5 - Identificar tentativas de acesso a arquivos sensíveis"
      echo "6 - Detectar possíveis ataques de força bruta a arquivos/pastas"
      echo "7 -  Primeiro e ultimo acesso de um IP suspeito."
      echo "8 - Localizar user-agent utilizado por um IP suspeito"
      echo "9 - Listar os ips e verificar o numero de requisições"
      echo "10 - Localizar acesso a um determinado arquivo sensível"
}

banner2()
{
      echo "By Diego Teixeira"
}


if [ -z ${1} ]
then
    banner
    banner2
 exit
elif [ ${1} == "1" ]
then
      echo "Detectar possivel XSS"
      grep -iE "<script|%3Cscript|<img|onerror|onload|javascript:" access.log
      echo "IPs envolvidos:"
      grep -iE '<script|%3Cscript|<img|onerror|onload|javascript:' access.log | cut -d " " -f1 | sort | uniq -c

elif [ ${1} == "2" ]
then
      echo  "Detectar tentativa de SQL Injection"
      grep -iE 'union|selec|insert|drop|%27|%22' access.log
      echo "IPs envolvidos:"
      grep -iE 'union|selec|insert|drop|%27|%22' access.log | cut -d " " -f1 | sort | uniq -c

elif [ ${1} == "3" ]
then
      echo "Detectar varredura de diretórios (Directory Traversal)"
      grep -E "\.\./|\.\.%2f" access.log
      echo "IPs envolvidos:"
      grep -E "\.\./|\.\.%2f" access.log | cut -d " " -f1 | sort | uniq -c

elif [ ${1} == "4" ]
then
      echo "Detectar possíveis ataques por scanners (User-Agent suspeito)"
      grep -iE "nikto|nmap|sqlmap|acunetix|curl|masscan|python" access.log
      echo "IPs envolvidos:"
      grep -iE "nikto|nmap|sqlmap|acunetix|curl|masscan|python" access.log | cut -d " " -f1 | sort | uniq -c

elif [ ${1} == "5" ]
then
      echo "Identificar tentativas de acesso a arquivos sensíveis"
      grep -iE "\.env|\.git|\.htaccess|\.bak" access.log
      echo "IPs envolvidos:"
      grep -iE "\.env|\.git|\.htaccess|\.bak" access.log | cut -d " " -f1 | sort | uniq -c

elif [ ${1} == "6" ]
then
      echo "Detectar possíveis ataques de força bruta a arquivos/pastas"
      grep " 404 " access.log
      echo "IPs envolvidos:"
      grep " 404 " access.log | cut -d " " -f 1 | sort | uniq -c | sort -n -r | head

elif [ ${1} == "7" ]
then
      echo "Primeiro e ultimo acesso de um IP suspeito"
      grep "172.17.0.3" access.log | head -n1
      grep "172.17.0.3" access.log | tail -n1

elif [ ${1} == "8" ]
then
      echo "Localizar user-agent utilizado por um IP suspeito"
      grep "172.17.0.2" access.log | cut -d '"' -f 6 | sort | uniq

elif [ ${1} == "9" ]
then
      echo "Listar os ips e verificar o numero de requisições"
      echo "IPs envolvidos:"
      cat access.log | cut -d " " -f 1 | sort | uniq -c

elif [ ${1} == "10" ]
then
      echo "Localizar acesso a um determinado arquivo sensível"
      grep "passwords.txt" access.log
else
      banner
      banner2
      exit
fi

