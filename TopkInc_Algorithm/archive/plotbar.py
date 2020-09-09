from pylab import *
import csv
import numpy as np
import pandas as pd
import sys

switch_backend('agg')

name = sys.argv[1]

data = pd.read_csv(name)


yname = 'Runtime(ms)';
xname = 'K';
xlabel(xname)
ylabel(yname)

#bar(data['X'], data['Y']/1000, width=1, align='center', color = 'blue', label = "Provenance")
#bar(data['X']+0.75, data['Z']/1000, width=1, align='center', color = 'yellow', label = "To K-instance")
#yscale('log')


X = data['K']
Y = data['AQ1']
Z = data['AQ2']

bar(X-2.5, Y, width = 7, color='blue', label = 'AQ1')
bar(X+3.75, Z, width = 7, color=[0,0,0.5], label = 'AQ2')

xticks(X)

legend(loc='upper left')
savefig('complexity.png', dpi = 80)