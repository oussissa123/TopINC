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

xlabel('K', size = 20)
ylabel('Memory (Ko)', size = 20)

tick_params(axis='both', which='major', labelsize=15)

xticks(X);
yscale('log', basey=2)
legend(loc='upper left', prop={'size': 15})
savefig('memory2.pdf', dpi = 80)
