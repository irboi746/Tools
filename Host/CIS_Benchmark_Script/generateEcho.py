import re 
# https://stackoverflow.com/questions/48963908/how-to-insert-space-between-alphabet-characters-and-numeric-character-using-rege

f = open('./forGen.txt','r')
newf = open('./out.sh','w')
lines = f.readlines()
for line in lines:
    line = re.sub(r'(?i)(?<=\d)(?=[a-z])',' ', line)
    line = line.strip()
    line = '[' + line + ']'
    newf.write('echo \"' + line + '\"' + " >> CISOut.txt" + '\n') 

newf.close()
f.close()