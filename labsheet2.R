# create functions

hello_function = function(){
  print("Hello,R!")
}

# calling the function 
hello_function()


# create function two numbers as input and return their poroduct

multiply_numbersa = function(a,b){
  return(a*b)
}

result = multiply_numbersa(2,5)
print(result)



# create the function and calculate the square f the number and add to 10 the3 result

calculate_square = function(x) {
  return((x^2)+10)
}

square_result = calculate_square(6)
print(square_result)


# tasks for anonymous functions

## create the anonymous function and calculate the cube of a number

print((function(x)x^3)(3))

# Use an anonymous function with sapply() to double the values in a numeric vector

values = c(5,10,15,20)

## apply the function
result = sapply(values,function(x)x*2)
print(result)




# Apply an anonymous function to calculate the sum of squares for each row in a data frame.

# Data frame
data_frame = data.frame(A=c(2,4,6),B=c(3,5,7))

# Using apply with an anonymous function
row_sums = apply(data_frame,1,function(x)sum(x^2))

print(row_sums)


##  Advanced Task with Functions

# Create a function that computes the perimeter of a rectangle by calling
# another function to calculate its area. The perimeter function should take
# the length and width as inputs.


# create the Area function

calculate_area = function(len,wid){
  
  return(len*wid)
  
}


## Perimeter function

calculate_perimeter = function(len,wid){
  area = calculate_area(len,wid)
  return(2*(len+wid))
}

perimeter_result = calculate_perimeter(5,3)
print(perimeter_result)








get_pass = function(m) m[m>=50]
get_pass(c(23,89,95,12,67))






