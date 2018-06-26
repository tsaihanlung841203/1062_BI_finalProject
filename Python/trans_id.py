import sys,os
input1=sys.argv[1]

f1=open('gene.txt','r+')
f=open('DSEC.txt','r+')
f2=open('DSIM.txt','r+')
dsec_read=f.readlines()
geneid_read=f1.readlines()
dsim_read=f2.readlines()
f4=open(input1,'r+')
f5=open(input1,'r+')
raw=f5.readlines()
con=0

f3=open('gene.txt','r+')
lines=len(f3.readlines())
line2=len(f4.readlines())
for w in range(4,line2):

	rawda=raw[w].split('	')
	for l in range(0,lines):
		
					
			#print(geneid_read[l]+' '+dsec_read[l])
			#print(rawda[0].strip()+' '+dsim_read[l].strip())
			if(rawda[0].strip()==dsec_read[l].strip()):
				rawda[0]=geneid_read[l]
				con=1
				print(rawda[0])
	if(con==1):

		raw[w]=rawda[0].strip()+'	'+rawda[1]+'	'+rawda[2]+'	'+rawda[3]
	else:
		raw[w]=''
	con=0



f10=open(input1+'.txt','w+')
f10.writelines(raw)




