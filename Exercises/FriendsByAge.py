from mrjob.job import MRJob

class MRAgeAvgCounter(MRJob):  
    def mapper (self, key,line):
        (userID,Name,Age,number_of_friends)=line.split(',')       
        yield Age, (int(number_of_friends),1) 
                     
    def combiner_reducer(self,Age, friends):         
        average,counter=0,0
        for num, c in friends:
            average=float(average*counter+num*c)/(counter+c)
            counter+=c
        return Age, (average,counter)  
          
    def combiner(self,Age,friends):
        yield self.combiner_reducer(Age,friends)                
                
    def reducer(self,Age,friends):
        Age,(average,counter)=self.combiner_reducer(Age,friends)
        yield Age, average  
                     
        
if __name__=='__main__':
    MRAgeAvgCounter.run()