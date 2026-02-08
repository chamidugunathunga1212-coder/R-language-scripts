print("hello world")

print(5%%2)
print(5%/%2)

print(20>10)

print(20>10)&&(30<=50)
print(!(10==10)) # NOT

X=10
y=5

#List the variables
print(ls())


#remove variable
rm(X)

#remove all variables
rm(list = ls())
print(ls())

print(abs(-20))

# log value
print(log(10))

num = 1.23 # integer and floats
int = 12L
com = 23+3i
log = TRUE # T-True or F-False 
char = "Cat"

print(class(int))
print(class(com))
print(class(num))
print(class(log))
print(class(char))


# casting

X = 12
y = as.character(X)
print(y)
print(class(y))


X = "24"
y = as.numeric(X)
print(y)
print(class(y))

X = TRUE
y = as.numeric(X)
print(y)
print(class(y))


## Take user inputs


age = readline(prompt = "Enter your age: ")

print(name)
print(age)

print(class(age))
age = as.numeric(age)
print(class(age))



# vectors

numeric_vector = c(12,14,2,25)
char_vector = c("DOG","CAT")
mixed_vector = c(12,"cat",89.2)
sequence_vector = seq(10,20,by=2)
repeated_vector = rep("DOG",5)

  
print(numeric_vector)
print(char_vector)
print(mixed_vector)
print(sequence_vector)
print(repeated_vector)
  

## slicing

vector = c(23,33,34,32,45,50,65)

element = vector[1]

print(element)

slice = vector[1:3]
print(slice)  


boolean_masked = vector[vector>40]  
print(boolean_masked)  


vector1 = c(1,2,3,4,5)
vector2 = c(11,12,13,14)
sum_vector = vector1+vector2
print(sum_vector)


comparison = vector1 >2
print(comparison) 


new_vector = c(2,90,3,4,5)

print(sum(new_vector))
print(mean(new_vector))
print(sd(new_vector))
print(range(new_vector))

append_vector = append(new_vector,100)
print(append_vector)

sorted_vector = sort(append_vector)
print(sorted_vector)  

unique_values = unique(new_vector)
print(unique_values)

sampled_values = sample(new_vector,2)
print(sampled_values)




a = c(23,12,19,45,27)

a[c(T,T,F,T,F)]
a[c(2,3,4)]
a[-c(2,3,4)]

b = c(10,20,30)
b*10

##boolean masking 
a>20
a[a>20]


# recursively added
a = c(20,30,45,100,23,25)
b = c(2,4,6)
a+b

summary(a)





  
  
  
  
  