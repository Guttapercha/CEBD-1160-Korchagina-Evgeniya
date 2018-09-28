from mrjob.job import MRJob
import statistics
import sys

##Calculating the most frequent request per district using mode from Statistics Package
sys.stdin = open('requetes311.csv', 'r')

class MRInfoCounter(MRJob):
    def mapper (self, _,line):
        (info,date,place)=line.strip().split(',')
        yield place, info

    def reducer(self,place, info):
        yield place, statistics.mode(info)

if __name__=='__main__':
    MRInfoCounter.run()


