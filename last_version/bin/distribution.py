from pylab import *
import csv
import numpy as np
import pandas as pd
import sys
switch_backend('agg')

res = sys.argv[2]
file = sys.argv[1]
data = pd.read_csv(file)
x = data.index
for relation in data.columns:
	y = data[relation]
	yname = 'Proportion of Tuple (%)'
	xname = 'subsets of violated constraints (from empty set to DC)';
	xlabel(xname)
	ylabel(yname)
	#plot(x, y)
	bar(x, y, width=100, align='center', color = 'blue')
	#scatter(x, y)
	savefig(res+'_'+relation+'.png')

#print(data)
#for ligne in data:
#    print(ligne)

#def readValue(fil):
#	ab = []
#	with open(fil, 'rb') as f:
#		reader = csv.reader(f, delimiter=',', quoting=csv.QUOTE_NONE)
#		for row in reader:
#			ab = [float(a) for a in row]
#	return ab
#result = ""
#description = ""
#xValue = ""
#fullValue = ""
#semiValue = ""
#with open('config', 'rb') as f:
#	reader = csv.reader(f, delimiter=',', quoting=csv.QUOTE_NONE)
#	for row in reader:
#		xValue = row[0]
#		fullValue = row [1]
#		semiValue = row[2]
#		description = row[3]
#		result = row [3]
#x = readValue(xValue)
#full = readValue(fullValue)
#semi = readValue(semiValue)
#x1 = []
#x2 = [] 
#for a in x:
#	x1.append(a+0.5);
#	x2.append(a-0.5);	
#bar(x1, full, width=1, align='center', edgecolor = 'blue', label = 'Full materialized')
#bar(x2, semi, width=1, align='center', edgecolor = 'yellow', label = 'TDSJA')
#xlabel("K")
#ylabel("Runtime (mn)")
#title (description);
#legend(loc='upper right')
#savefig(result+'.png')

