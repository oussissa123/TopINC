from pylab import *
import sys
import pandas as pd
switch_backend('agg')

file1 = sys.argv[1]
data = pd.read_csv(file1)
	
X = data['X']

#fig, ax = subplots(3, 1)
#ax1,ax2,ax3 = ax[0], ax[1], ax[2]

a1000_1000_dc_10 = data['1000_dc_10']
a1000_1000_dc_20 = data['1000_dc_20']
a1000_1000_dc_30 = data['1000_dc_30']


#a500_500_dc_10 = data['500_dc_10']
#a500_500_dc_20 = data['500_dc_20']
#a500_500_dc_30 = data['500_dc_30']


#title("K=20 TopInc")
xlabel("Answers size (x10^5)", size = 20, weight='bold')
ylabel("Memory (Ko)", size = 20, weight='bold')

X = X/100000

title("K=20 search space=1000x1000", size = 20, weight='bold')
bar(X-0.25, a1000_1000_dc_10, width=0.25, label = 'dc = 10')
bar(X, a1000_1000_dc_20, width=0.25, label = 'dc = 20')
bar(X+0.25, a1000_1000_dc_30, width=0.25, label = 'dc = 30')

margins(0.05)

#ax2.set_title("K=20 TopInc(500x500)")
#ax2.bar(X-0.25, a500_500_dc_10, width=0.25, label = 'dc = 10')
#ax2.bar(X, a500_500_dc_20, width=0.25, label = 'dc = 20')
#ax2.bar(X+0.25, a500_500_dc_30, width=0.25, label = 'dc = 30')

#yscale('log')
#xscale('log')
xticks(X)
xticks(X)

tick_params(axis='both', which='major', labelsize=20)

subplots_adjust(left=None, bottom=0.2, right=None, top=0.9, wspace=None, hspace=0.8);
#legend(loc='upper right')
savefig('memory1000x1000.pdf', dpi = 60)

