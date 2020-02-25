from pylab import *
import csv
import numpy as np
import pandas as pd
import sys
switch_backend('agg')

name = sys.argv[1]
#unity = sys.argv[2]
output = sys.argv[2]

data = pd.read_csv(name)

#x1 = []
#y1 = []


#for i in range(len(data['X'])):
#	x1.append(data['X'][i])
#	y1.append(data['Y'][i])


yname = 'Runtime(s)';
xname = 'Number of constraints';
xlabel(xname)
ylabel(yname)
bar(data['X'], data['Y']/1000, width=1, align='center', color = 'blue', label = "Provenance")
bar(data['X']+0.75, data['Z']/1000, width=1, align='center', color = 'yellow', label = "To K-instance")
#yscale('log')
legend(loc='upper left')
savefig(output+'.png')
