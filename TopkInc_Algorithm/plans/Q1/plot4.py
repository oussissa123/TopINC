from pylab import *
import sys
import numpy as np
import pandas as pd
switch_backend('agg')

file1 = sys.argv[1]
data = pd.read_csv(file1)
	
pos = data['K']
topInc = data['TopInc']
baseline = data['Baseline']

#pos = []
#for a in range(len(queries)):
#	pos.append(a*2)
#pos = np.array(pos)

bar(pos-5, topInc/1024, width = 10, label = 'TopInc')
bar(pos+5, baseline/1024, width = 10, label = 'Baseline')

#yscale('log')#, basey=2)
ylabel('Memory (Mo)', size = 20)
xlabel('K', size = 20)
xticks(pos);

tick_params(axis='both', which='major', labelsize=20)
subplots_adjust(left=0.2, bottom=0.2, right=0.9, top=0.85, wspace=0.5, hspace=0.8);
#legend(loc='upper right')
legend(loc='upper center', bbox_to_anchor=(0.5, 1.25), shadow=False, ncol=2, prop={"size":20})
savefig(file1+'.pdf', dpi = 75)
