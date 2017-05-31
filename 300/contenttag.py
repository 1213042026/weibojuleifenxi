#coding:utf-8
import pymysql
import jieba
import sys
import jieba.analyse

reload(sys)
sys.setdefaultencoding('utf8')	
tagresult=[line.strip().decode('utf-8') for line in open('./se.txt').readlines()] 
for tag in tagresult:
        ids=tag.split('\t')[0]
        score=tag.split('\t')[1].split(',')
        result='0.0'
        if score[0]=='0.0' and score[1]=='0.0' and score[2]=='0.0':
                         continue
        if score[0] >= score[1] and score[0] > score[2]:
                         result='消极'
        elif score[2] >= score[0] and score[2] > score[1]:
                         result="糙，怨恨"
        db = pymysql.connect(host='10.206.131.43', port=3306, user='root', passwd='skyaid8.6', db='test', charset='utf8')
        cr1=db.cursor()
        cr1.execute("update publicsentiment  set flag='%s' where id='%s'"%(result,tag.split('\t')[0]))
        db.commit()
        cr1.close()
        db.close()
