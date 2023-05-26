import json
import subprocess
import argparse

descText = '===simple python script to list environment variable out of all lambda==='
epiText = '***you will need aws cli installed***'

parser = argparse.ArgumentParser(prog = 'lambdaEnvAudit',
                                 description = descText,
                                 epilog = epiText)

parser.add_argument('-p','--profile', help='AWS profile to use',required=True)
parser.add_argument('-f','--file', help='File with lambdas')

args = parser.parse_args()

AWS_PROFILE = args.profile
FILE_DIR = args.file

print(descText)

if FILE_DIR:
    with open(FILE_DIR) as f:
        data = json.load(f)
else:
    command = 'aws lambda list-functions --profile %s' % AWS_PROFILE
    output = subprocess.run(command,stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
    data = json.loads(output.stdout)
    
# run aws
outFile = open('aws_function_env.txt','a')
for i in data['Functions']:
    fn = i['FunctionName']
    command = 'aws lambda get-function-configuration --function-name %s --profile %s' % (fn,AWS_PROFILE)
    output = subprocess.run(command,stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
    if output.stderr:
        if 'AccessDeniedException' in output.stderr:
            outFile.write('%s: no permission to read lambda config\n' % fn)
            print('%s: no permission to read lambda config\n' % fn)
        else:
            outFile.write('%s:%s\n' % (fn,output.stderr))
            print('%s:%s\n' % (fn,output.stderr))
            
        
    if output.stdout:
        i_data = json.loads(output.stdout)
        if 'Environment' in i_data:
            outFile.write('%s:%s\n' % (fn,i_data['Environment']))
            print('%s:%s\n' % (fn,i_data['Environment']))
        else:
            outFile.write('%s:no environment variable\n' %fn)
            print('%s:no environment variable\n' %fn)
    
print('===end of script run===')
