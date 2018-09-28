from mrjob.job import MRJob
import statistics

class MRAgeAvgCounter3(MRJob):  
    def mapper (self, _,line):
        (userID,Name,Age,number_of_friends)=line.split(',')       
        yield Age, int(number_of_friends)
                     
    def reducer(self,Age, friends):         
        yield Age, statistics.mean(friends)
        
        
if __name__=='__main__':
    MRAgeAvgCounter3.run()