from mrjob.job import MRJob

class MRMaxTemperature(MRJob):
            
    def mapper (self, _,line):
        (stationID,date,type,temp,a,b,c,v)=line.split(',')
        if (type=='TMAX'):
            TmaxValue=temp
            yield stationID, TmaxValue
    
    def reducer(self,stationID, T):  
        
        yield stationID, max(T)
        

if __name__=='__main__':
    MRMaxTemperature.run()