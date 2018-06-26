import sys,os
input1=sys.argv[1]
f1=open('Ir.txt','r+')
f=open('Obp.txt','r+')
f2=open('Or.txt','r+')
Obp_read=f.readlines()
Ir_read=f1.readlines()
Or_read=f2.readlines()
f4=open(input1,'r+')
f5=open(input1,'r+')
raw=f5.readlines()
con=0

f3=open('Or.txt','r+')



lines=len(f3.readlines())
line2=len(f4.readlines())

f101=open('space.txt','r+')
spa=f101.readlines()

for w in range(4,line2):

	rawda=raw[w].split('	')
	for l in range(0,lines):
		
					
			#print(geneid_read[l]+' '+dsec_read[l])
			#print(rawda[0].strip()+' '+dsim_read[l].strip())
			if(rawda[0].strip()==Or_read[l].strip()):
				spa.append(raw[w])
				con=con+1
				print(rawda[0])
	



f10=open(input1.split('.')[0]+'_Or.txt','w+')
f10.writelines(spa)