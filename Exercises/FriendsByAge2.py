from mrjob.job import MRJob

class MRAgeAvgCounter2(MRJob):  
    def mapper (self, _,line):
        (userID,Name,Age,number_of_friends)=line.split(',')       
        yield Age, number_of_friends
                     
    def reducer(self,Age, friends):         
        summ,counter=0,0
        for num in friends:
            summ+=num
            counter+=1
        yield Age, summ/counter 
        
        
if __name__=='__main__':
    MRAgeAvgCounter2.run()
          
