# 1.  Create vector x = [1 2 3 4 5] in R and store it in an object that will be called x; 

x<-1:5 

# 2.  Display the mode of x, then its length; 

print(x)

# 3.  Extract the first element, then the last one; 

x[1]
print(x[1])
x[length(x)]
print(x[length(x)])

# 4. Extract the first three elements and store them in a vector that will be named a; 

a<-x[1:3]
print(a)

# 5. Extract the elements in position 1, 3, 5 and store them in a vector that will be named a; 

b<-x[c(1,3,5)]
print(b)

# 6. Perform the addition of a and b, comment on the result; 

a+b #addition of two arrays (by elements)

# 7. Add the number 10 to the vector x, then multiply the result by 2;

(x+10)*2

# 8. Perform the following addition: x + a, comment on the result, then look at the result of a + x; 

x+a #when two arrays of different length are summarized elements of the shorter array 
#repeatedly added till the length of longer array
a+x #the same rsult as x+a

# 9. Multiply the vector by the scalar c that we will set to 2;
c<-2
x*c #each component of vector maltiplied by scalar

# 10. Perform the multiplication of a and b, comment on the result; 

a*b #multiplication of elements taking the same positions in eacj array

# 11. Perform the following multiplication: x * a, comment on the result; 

x*a #when two arrays of different length are multiplied elements of the shorter array 
#repeatedly multiply elements of longer arrray till the length of longer array

# 12. Retrieve the positions of the multiples of 2 and store them in a vector that will be named ind

ind<-which(x%%2==0)
print(ind)

# 13. Then keep only the multiples of 2 of x in a vector that will be named mult_2;

mult_2<-x[x%%2==0]
print(mult_2)

# 14. Display the elements of x that are multiples of 3 and multiples of 2; 

x<-1:6
print(x)
for (i in x) {
  if (i%%2==0 & i%%3==0)  print(i)
}

# 15. Calculate the sum of the elements of x;

x<-1:5
print(x)
#option 1
summ<-0
for(i in x){
  summ=summ+i
}
print(summ)
#option 2
sum(x)

# 16. Replace the first element of x with a 4;

x[1]<-4
print(x)

# 17. Replace the first element of x with the value NA, then calculate the sum of the elements of x; 

x[1]<-NA
print(x)
summ<-0
for(i in x){
  if (!is.na(i))
    summ=summ+i
}
print(summ)

# 18. List the objects in memory in session R; 

mget(ls())

# 19. Delete the vector; 

rm(x) #delete vector x

# 20. Delete all objects in the session.

rm(list = ls())