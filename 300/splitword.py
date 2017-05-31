#coding:utf-8
import pymysql
import jieba
import sys
import jieba.analyse

reload(sys)
sys.setdefaultencoding('utf8')	
fenciresult=open("./fenci.txt",'w')  #数据写入到fenciresult里
stopkey=[line.strip().decode('utf-8') for line in open('./stopwords.txt').readlines()]  
neg=[line.strip().decode('utf-8') for line in open('./house.txt').readlines()]
self=[line.strip().decode('utf-8') for line in open('./sport.txt').readlines()]
#extreme=[line.strip().decode('utf-8') for line in open('./.txt').readlines()]

db = pymysql.connect(host='10.206.131.43', port=3306, user='root', passwd='skyaid8.6', db='test', charset='utf8')
cr=db.cursor()
cr.execute("select * from weibo ")
for line in cr:
          jiebas=jieba.analyse.extract_tags(line[1],5)
          #print(1)
         # jiebas=jieba.cut_for_search(line[1])
         # 下面一步功能就是把文本分词然后跟停用词表做个差集，相当于过滤一下
          fenci_key=" ".join(list(set(jiebas)-set(stopkey)))
         # print(set(fenci_key))
          neg_1=list(set(fenci_key).union(set(neg)))
         # print(neg_1)
          neg_rate=len(neg_1)*1.0/5
          self_1=list(set(fenci_key).union(set(self)))
          
          #print(fenci_key)
          self_rate=len(self_1)*1.0/5
          tag="%s,%s"%(str(neg_rate),str(self_rate))
          fenciresult.write(fenci_key)
          fenciresult.write('\n')
         # print(fenci_key)
          db1 = pymysql.connect(host='10.206.131.43', port=3306, user='root', passwd='skyaid8.6', db='test', charset='utf8')
          cr1=db1.cursor()
          cr1.execute("update weibo  set splitwords='%s',tag='%s' where id='%s'"%(fenci_key,tag,str(line[0])));
       #   print("update userpostbar set splitwords='%s' where postbarid='%s'"%(fenci_key,line[3]))
          db1.commit()
          cr1.close()
          db1.close()
fenciresult.close()


