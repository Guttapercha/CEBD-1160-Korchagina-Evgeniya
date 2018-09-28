from mrjob.job import MRJob

class MRMinTemperature(MRJob):
            
    def mapper (self, _,line):
        (stationID,date,type,temp,a,b,c,v)=line.split(',')
        if (type=='TMIN'):
            TminValue=temp
            yield stationID, TminValue
    
    def reducer(self,stationID, T):  
        
        yield stationID, min(T)

if __name__=='__main__':
    MRMinTemperature.run()