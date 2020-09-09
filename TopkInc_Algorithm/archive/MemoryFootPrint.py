from pylab import *
import csv
import numpy as np
import pandas as pd
import sys
switch_backend('agg')
r = range(1, len(sys.argv))
for i in r:
	data = pd.read_csv(sys.argv[i])
	name = sys.argv[i].split("\.")[0];
	X = data['kvalue']
	Y = data['semi_memory']
	plot(X, Y, label = name)

yscale("log");
legend()
savefig("img.png")
