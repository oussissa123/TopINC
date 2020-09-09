from pylab import *
import sys
import pandas as pd
switch_backend('agg')

file1 = sys.argv[1]
data = pd.read_csv(file1)


fig, axs = plt.subplots(2,2)
ax1 = axs[0, 0]
ax2 = axs[1, 0]
ax3 = axs[0, 1]
ax4 = axs[1, 1]

ax4.set_visible(False);

ax1.set_ylabel('Memory (Ko)')
ax2.set_ylabel('Memory (Ko)')
ax3.set_ylabel('Memory (Ko)')

ax1.set_xlabel('K')
ax2.set_xlabel('K')
ax3.set_xlabel('K')

ax1.set_title('Q1')
ax2.set_title('Q11')
ax3.set_title('Q14')


	
X = data['K']
Q1 = data['Q1']
Q11 = data['Q11']
Q14 = data['Q14']


ax1.bar(X, Q1, width = 5)
ax2.bar(X, Q11, width = 5)
ax3.bar(X, Q14, width = 5)

ax1.set_xticks(X);
ax2.set_xticks(X);
ax3.set_xticks(X);

subplots_adjust(left=0.1, bottom=None, right=0.9, top=None, wspace=None, hspace=None);

#yscale('log')
savefig('memory1.png')


