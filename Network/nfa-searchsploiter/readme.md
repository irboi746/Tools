# nfa-searchsploiter
An automation to do searchsploit on Nessus-File-Analyser "vulnerability" result based on CVE.

## Problem Statement
Searchsploit is a good tool to search for public exploit use however it is not scalable Additionally, it does not search for exploits based on CVE.

Nessus is a tool that can help with scaling but it is only scans for vulnerability and does not provide links to public exploits.

## The Solution
1. Reads the xlsx file output from Nessus File Analyser "vulnerability" result 
2. Extracts the cve value that is used for searchsploit
3. Outputs a new csv file with link to public exploit

## Libraries & Helping Tools :
### Tools
[Nessus File Analyzer](https://github.com/LimberDuck/nessus-file-analyzer) a great tool that can be used to parse '.nessus' files. 

### Python Libraries
[pyExploiDb](https://pypi.org/project/pyExploitDb/)
   - [Issues with pyExploitDb](https://github.com/GoVanguard/pyExploitDb/issues/7)
[pandas](https://pypi.org/project/pandas/)
[openpyxl](https://pypi.org/project/openpyxl/)
