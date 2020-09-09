from pylab import *
import sys
import pandas as pd
switch_backend('agg')

file1 = sys.argv[1]
data = pd.read_csv(file1)
	
X = data['K']
Q1 = data['Q1']
Q11 = data['Q11']
Q14 = data['Q14']


bar(X-2, Q1, width = 2, label = 'Q1')
bar(X, Q11, width = 2, label = 'Q11')
bar(X+2, Q14, width = 2, label = 'Q14')

xlabel('K', size = 20, weight='bold')
ylabel('Memory (Ko)', size = 20, weight='bold')

#fontproperties = {'family':'sans-serif','sans-serif':['Helvetica'],'weight' : 'bold', 'size' : 20}


tick_params(axis='both', which='major', labelsize=20)
#tick_params(axis='both',fontproperties)

xticks(X);
yscale('log', basey=2)
#legend(loc='upper left', prop={'size': 15})
#legend(bbox_to_anchor=(1.05, 1), loc='upper left', borderaxespad=0., prop={'size': 15})

subplots_adjust(left=0.2, bottom=0.2, right=0.9, top=0.7, wspace=None, hspace=0.8);
legend(bbox_to_anchor=(0., 1.02, 1., .102), loc='lower left',ncol=2, mode="expand", borderaxespad=0., prop={'size': 20, 'weight':'bold'})

savefig('Q1_Q11_Q14.pdf', dpi = 80)
