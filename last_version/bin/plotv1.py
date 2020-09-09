from pylab import *
import csv
import sys
import pandas as pd
switch_backend('agg')

file1 = sys.argv[1]
result = sys.argv[2]

data = pd.read_csv(file1)

time_full = data['F']
time_semi = data['S']

memory_full = data['FM']
memory_semi = data['SM']

x = data['X']


plot(x, memory_full, label = 'Full materialized')
plot(x, memory_semi, label = 'TDSJA')

#bar(x, memory_full, width=0.1, edgecolor = 'blue', label = 'Full materialized')
#bar(x, memory_semi, width=0.2, edgecolor = 'yellow', label = 'TDSJA')

xlabel("answer density")
ylabel("Memory used (Ko)")
yscale('log', basey=2)
legend(bbox_to_anchor=(0, 1),loc='lower left', fontsize='small')
savefig(result+'_memory.png')
clf()

plot(x, time_full, label = 'Full materialized')
plot(x, time_semi, label = 'TDSJA')
#bar(x, time_full, width=0.01, edgecolor = 'blue', label = 'Full materialized')
#bar(x, time_semi, width=0.02, edgecolor = 'yellow', label = 'TDSJA')
xlabel("answer density")
ylabel("Runtime (ms)")
yscale('log', basey=2)
legend(bbox_to_anchor=(0, 1),loc='lower left', fontsize='small')
savefig(result+'_runtime.png')
clf()

