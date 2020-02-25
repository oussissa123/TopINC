from pylab import *
import sys
import pandas as pd
switch_backend('agg')

file1 = sys.argv[1]
data = pd.read_csv(file1)

K = data['kvalue'] 
full_time = data['full_time']
semi_time = data['semi_time']
full_memory = data['full_memory']
semi_memory = data['semi_memory']
	

bar(K, full_time, width=1, align='center', edgecolor = 'blue', label = 'Full materialized')
bar(K+1, semi_time, width=1, align='center', edgecolor = 'yellow', label = 'TDSJA')
xlabel("K")
ylabel("Runtime (ms)")
#legend(loc='upper left')
#yscale('log', base = 2)
legend(bbox_to_anchor=(0, 1),loc='lower left', fontsize='small')
savefig(file1+'_time.png')
clf()

bar(K, full_memory, width=1, align='center', edgecolor = 'blue', label = 'Full materialized')
bar(K+1, semi_memory, width=1, align='center', edgecolor = 'yellow', label = 'TDSJA')
xlabel("K")
ylabel("Memory used (Ko)")
legend(bbox_to_anchor=(0, 1),loc='lower left', fontsize='small')
#legend(loc='upper left')
#yscale('log', base = 2)
savefig(file1+'_memory.png')
