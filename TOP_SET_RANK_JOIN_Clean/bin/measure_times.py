from pylab import *
import csv
import sys
import pandas as pd
import numpy as np
switch_backend('agg')

def color_it(pos):
	res = []
	for i in pos:
		if (i%3==0):
			res.append('b')
		elif (i%3==1):
			res.append('g')
		else:
			res.append('y')
	return res;
bags = sys.argv[1]
sets = sys.argv[2]
result = sys.argv[3]

data_bag = pd.read_csv(bags)
data_set = pd.read_csv(sets)
names1 = data_bag.columns
names2 = data_set.columns
values1 = data_bag.values[0]
values2 = data_set.values[0]
positions1 = np.arange(len(names1))+1
positions2 = np.arange(len(names2))+1
col1 = color_it(positions1);
col2 = color_it(positions2);


print(col1)

#figure one (bag semantic)
bar(positions1, values1, width=0.5, color = col1)
xlabel("Queries")
ylabel("Runtime (ms)")
title("Answer Bag Semantic ")
xticks(positions1, names1)
savefig(result+'_bag_time.png')
clf()


#figure one (set semantic)
bar(positions2, values2, width=0.5, color = col2)
xlabel("Queries")
ylabel("Runtime (ms)")
title("Answer set Semantic ")
xticks(positions2, names2)
savefig(result+'_set_time.png')
clf()



'''
#names1 = data_bag.columns
#names2 = data_set.columns
#positions1 = []
#positions2 = np.arange(len(names2))

l = 0.5;
#positions1 = []
#names1  = []

clf()
print(data_bag.columns)
print(data_bag.values)
for i in np.arange(len(data_bag.columns)):
	col = data_bag.columns[i]
	bar([l], [data_bag.values[0][i]], width=0.5, label = 'col')
	#positions1.append(l);
	#names1.append('')	
	l = l + 0.5
#bar(positions1, data_bag.values[0], width=0.5, label = names1)
xlabel("Queries")
ylabel("Runtime (ms)")
title("Answer Bag Semantic ")
#xticks(positions1, names1)
legend('upper left')
savefig(result+'_bag_time.png')
clf()


l = 1;
#positions2 = []
#names2  = []

print(data_set.columns)
print(data_set.values)
for i in np.arange(len(data_set.columns)):
	col = data_set.columns[i]
	bar([l], [data_set.values[0][i]], width=1, label = col)
#	positions2.append(l)
#	names2.append('')
	l = l + 1
	
xlabel("Queries")
ylabel("Runtime (ms)")
title("Answer Set Semantic ")
#xticks(positions2, names2)
legend(loc='upper left')
savefig(result+'_set_time.png')
clf()



if (len(data_set.values)>1):
	bar(positions1, data_bag.values[1]);
	xlabel("Measure")
	ylabel("Used Memory (Ko)")
	xticks(positions1, names1)
	title("Answer Bag Semantic ")
	savefig(result+'_bag_memory.png')
	clf()
	bar(positions2, data_set.values[1]);
	xlabel("Measure")
	ylabel("Used Memory (Ko)")
	xticks(positions2, names2)
	title("Answer Set Semantic ")
	savefig(result+'_set_memory.png')
	clf()
'''

