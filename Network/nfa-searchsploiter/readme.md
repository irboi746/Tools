# nfa-searchsploiter
An automation to do searchsploit on Nessus-File-Analyser "vulnerability" result based on CVE.

## Problem Statement
Searchsploit is a good tool to search for public exploit use however it is not scalable Additionally, it does not search for exploits based on CVE.

Nessus is a tool that can help with scaling but it is only scans for vulnerability and does not provide links to public exploits.

## The Solution
1. Reads the xlsx file output from Nessus File Analyser "vulnerability" result 
2. Extracts the cve value that is used for searchsploit
3. Outputs a new csv file with link to public exploit

## Usage
For Windows, git.exe will have to be installed for this to work.

### Creating and Accessing Virtual Environment
- Windows
```
python -m venv venv
/venv/Scripts/activate.bat
```
- Linux
```
python3 -m venv venv
source /venv/bin/activate
```
### Install Packages
```
pip3 install pandas
pip3 install openpyxl
pip3 install pyexploitdb
```

### Modifying pyExploitDb packages (as of 25 Nov 2022)
[Issues with pyExploitDb](https://github.com/GoVanguard/pyExploitDb/issues/7)

### Usage
In `main.py` change `IN_PATH` and `OUT_PATH` to the input and output path repectively.

- Windows
```
python main.py
```

- Linux
```
python3 main.py
```

## Libraries & Helping Tools :
### Tools
[Nessus File Analyzer](https://github.com/LimberDuck/nessus-file-analyzer) a great tool that can be used to parse '.nessus' files. 

### Python Libraries
[pyExploiDb](https://pypi.org/project/pyExploitDb/)
   - [Issues with pyExploitDb](https://github.com/GoVanguard/pyExploitDb/issues/7)

[pandas](https://pypi.org/project/pandas/)

[openpyxl](https://pypi.org/project/openpyxl/)
