from mrjob.job import MRJob

import sys

##Calculating the total number of requests per district

sys.stdin = open('requetes311.csv', 'r')

class MRInfoCounter(MRJob):
    def mapper (self, _,line):
        (info,date,place)=line.strip().split(',')
        yield place, 1

    def reducer(self,place, info):
        yield place, sum(info)

if __name__=='__main__':
    MRInfoCounter.run()
