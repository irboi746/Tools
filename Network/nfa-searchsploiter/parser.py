import pandas as pd

def extractCVENum(path:str,sheetname:str):
    data = pd.read_excel(path, sheet_name=sheetname)
    df = pd.DataFrame(data,columns=['CVE number'])
    return df

def dfFillNan(df:pd.DataFrame):
    return df.fillna('0')

def dfRow2List(cellValue):
    valueList = cellValue.split(',')
    return valueList

def convert2series(list:list):
    return pd.Series(list)

if __name__ == "__main__":
    PATH = '/home/dev/Desktop/nfa_searchsploiter/security_report_Nov4-to-Nov8_smaller.xlsx'
    SHEETNAME = 'vulnerabilities'
    #extract CVE number from excel 
    cveNumDf = extractCVENum(PATH,SHEETNAME)
    # Fill empty cells with zero
    cveNumDfFilled = dfFillNan(cveNumDf['CVE number'])
    #convert filled each row in df into list.
    for rows in cveNumDfFilled:
        if rows != '0':
            list = dfRow2List(rows)
            print(list)

