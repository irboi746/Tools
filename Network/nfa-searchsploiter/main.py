import parser
import searchVuln

PATH = '/home/dev/Desktop/nfa_searchsploiter/security_report_Nov4-to-Nov8.xlsx'
SHEETNAME = 'vulnerabilities'
pEDB = searchVuln.initEDB()

print('Processing...')
#extract CVE number from excel 
cveNumDf = parser.extractCVENum(PATH,SHEETNAME)

# Fill empty cells with zero
cveNumDfFilled = parser.dfFillNan(cveNumDf['CVE number'])
exploitColumnList = []

#convert filled each row in df into list.
for row in cveNumDfFilled:
    # if row is not nan, search cve
    if row != '0':
        list = parser.dfRow2List(row)
        exploitRowlist = []
        for item in list:
            exploit = searchVuln.searchCVE(pEDB,item)
            exploitRowlist.append(exploit)
        exploitColumnList.append(exploitRowlist)
    else:
        exploitRowlist = ['']
        exploitColumnList.append(exploitRowlist)

#convert from list to columns
exploitDf = parser.convert2series(exploitColumnList)

#join series to dataframe as columns then output as csv
cveNumDf['Exploits'] = exploitDf 
cveNumDf.to_csv('test.csv')
