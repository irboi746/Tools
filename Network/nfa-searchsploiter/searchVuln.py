from pyExploitDb import PyExploitDb

def initEDB():
    pEDB = PyExploitDb()
    pEDB.debug = False
    pEDB.openFile()
    return pEDB

def searchCVE(pEDB:PyExploitDb, cve:str):
    return pEDB.searchCve(cve)

if __name__ == "__main__":
    pEDB = initEDB()
    cve = 'CVE-2018-14592'
    result = searchCVE(pEDB,cve)
    print(result['edbid'],result['exploit'])


