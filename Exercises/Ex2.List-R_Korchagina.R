# 1. Evaluate the following code: TRUE + FALSE + TRUE * 4 and comment on it; 

TRUE + FALSE + TRUE * 4 # true is 1, false is 0. simple addition gives 4.
 
# 2. Evaluate the following expressions: c (1, 4, TRUE), and c (1, 4, TRUE, "hello"), comment; 

c (1, 4, TRUE) # array of integer
c (1, 4, TRUE, "hello") # array of characters (auto-parsing because of character element "hello")

# 3. Create a list called L and which contains elements 1, 4 and TRUE in first, second and third positions respectively; 

L<-list(1,4,TRUE)

# 4. Extract the first item from list L, and display its mode. Do the same with the third element, and comment; 

L[1]
mode(L[1]) # each element of the list can be treated as a list of elements (contrary to elements of an array)
L[3]
mode(L[3])

# 5. Add a fourth element to list L: "hello", then display the structure of the L; 

L[4]<-"hello" 
L

# 6. Remove the third item from list L; 

L[-3]
L

# 7. Create a list of three items: your name, your first name, and your year of birth. 
#These three elements of the list will have to be named respectively "name", "first name " and "year of birth". 
#Store the list thus created in an object named me; 

me<-list('Korchagina', 'Evgeniya', 1985)
names(me)=c('name','first name','year of birth')
me

# 8. Extract the first name from the me list in two ways: using the index, and using the naming 

me[[2]]
me[['first name']]

# 9. Create a list with the same structure as that of me, filling it with the information of another person 
#and name it yourself. Then, create the people list, which will contain the lists you and me; 

you<-list('Ivanov', 'Oleg', 1982)
names(you)=c('name','first name','year of birth')
you[2]

rownames = c("you", "me")
colnames = c('name','first name','year of birth')
people <- matrix(c(you,me), nrow = 2, byrow = TRUE, dimnames = list(rownames, colnames))
print(people)

# 10. Extract the list of people (in first position);

print(people[,'name'])

#11. Extract directly since nobody the first name of the element in first position.
 
people[1,'name']

