from pylab import *
import sys
import pandas as pd
switch_backend('agg')


bar([0], [0], label = 'dc = 10')
bar([0], [0], label = 'dc = 20')
bar([0], [0], label = 'dc = 30')

#bar([10,20,30,40,30,281], [100000,200000, 300000,400000,500000,60000], label = 'dc = 10')
#bar([10,20,30,40,30,281], [100000,200000, 300000,400000,500000,60000], label = 'dc = 20')
#bar([10,20,30,40,30,281], [100000,200000, 300000,400000,500000,60000], label = 'dc = 30')

axis("off")

legend(loc='center',prop={'size': 20, 'weight':'bold'})
savefig('memorylegend.pdf', dpi = 60)

