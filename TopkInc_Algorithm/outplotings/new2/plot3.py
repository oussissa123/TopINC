from pylab import *
import sys
import pandas as pd
switch_backend('agg')

file1 = sys.argv[1]
data = pd.read_csv(file1)
	
X = data['X']


a1000_1000_dc_10 = data['1000_dc_10']
a1000_1000_dc_20 = data['1000_dc_20']
a1000_1000_dc_30 = data['1000_dc_30']


a500_500_dc_10 = data['500_dc_10']
a500_500_dc_20 = data['500_dc_20']
a500_500_dc_30 = data['500_dc_30']


#bar(X-2, Q1, width = 2, label = 'Q1')
#bar(X, Q11, width = 2, label = 'Q11')
#bar(X+2, Q14, width = 2, label = 'Q14')


fig, ax = subplots(3, 1)

ax1,ax2,ax3 = ax[0], ax[1], ax[2]

ax1.set_title("K=20 TopInc(1000x1000)")
ax1.plot(X, a1000_1000_dc_10, 'bx-', label = 'dc = 10')
ax1.plot(X, a1000_1000_dc_20, 'b*-', label = 'dc = 20')
ax1.plot(X, a1000_1000_dc_30, 'bo-', label = 'dc = 30')

ax1.set_xlabel("Answers size")
ax2.set_xlabel("Answers size")
ax1.set_ylabel("Memory (Ko)")
ax2.set_ylabel("Memory (Ko)")

ax2.set_title("K=20 TopInc(500x500)")
ax2.plot(X, a500_500_dc_10, 'yx-', label = 'dc = 10')
ax2.plot(X, a500_500_dc_20, 'y*-', label = 'dc = 20')
ax2.plot(X, a500_500_dc_30, 'yo-', label = 'dc = 30')

ax3.axis("off")
#ax3.remove()
#ax3.clear()

#xlabel('Answers size')
#ylabel('Memory (Ko)')
#xticks(X);

subplots_adjust(left=None, bottom=0.005, right=None, top=0.9, wspace=None, hspace=0.8);

ax1.set_yscale('log', basey=2)
ax2.set_yscale('log', basey=2)

#legend(loc='upper right')
savefig('memory3.pdf', dpi = 80)
