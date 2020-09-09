from pylab import *
import csv
import numpy as np
import pandas as pd
import sys
switch_backend('agg')

fig, axs = plt.subplots(2, 1)
ax1, ax2 = axs[0], axs[1]
# fig.suptitle('Vertically stacked subplots')
# axs[0].plot(x, y)
# axs[1].plot(x, -y)

title1 = "a. CBS & CBM with ascending top-k"
title2 = "b. CBS & CBM with descending top-k" 

data = pd.read_csv(sys.argv[1])
X = data['kvalue']
Y = data['semi_memory']
ax1.set_title(title1, fontsize=12)
Y = Y/1024
ax1.plot(X, Y, 'bo', X, Y, 'k')
#ax1.set_yscale("log");
ax1.set_ylabel("Memory (Mo)", fontsize=12)
ax1.set_xticks(X);
#ax1.set_xlabel("K", fontsize=12);
# ax1.locator_params(nbins=3)

data = pd.read_csv(sys.argv[2])
X = data['kvalue']
Y = data['semi_memory']
ax2.set_title(title2, fontsize=12)
ax2.plot(X, Y, 'b*', X, Y, 'k')
#ax2.set_yscale("log");
ax2.set_ylabel("Memory (Ko)", fontsize=12)
ax2.set_xlabel("K", fontsize=12);
ax2.set_xticks(X);
# ax2.locator_params(nbins=3)
#legend()
# tight_layout(pad=0.6, w_pad=0.45, h_pad=0.5)
tight_layout(w_pad=0.20, h_pad=0.20)
savefig("img2.png", dpi = 80)
