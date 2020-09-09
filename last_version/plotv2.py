from pylab import *
import csv
import sys
import pandas as pd
switch_backend('agg')

file1 = sys.argv[1]
result = sys.argv[2]

data = pd.read_csv(file1)

time_read = data['F']
time = data['S']

X = data['X']


bar(X, time_read, width=1000, color='blue', label = 'Reading')
bar(X+1000, time, width=1000, color='yellow', label = 'TDSJA')

xlabel("Answer size")
ylabel("Runtime (ms)")
#yscale('log', basey=2)
#xscale('log', basex=2)
legend(loc='upper left')
savefig(result+'_read.png')


