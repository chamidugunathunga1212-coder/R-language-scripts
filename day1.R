
## create the vector

vector = c(10,20)
print(vector)


## append the values for the vector 
append_vector = append(vector,29)
print(append_vector)


## matrix 

matrix1 = matrix(1:6,nrow = 3,ncol = 2)
print(matrix1)
matrix2 = matrix(1:6,nrow = 3,ncol = 2, byrow = TRUE)
print(matrix2)


## matrix properties
print(dim(matrix1))
print(summary(matrix1))


## merging matrices

matrix1 = matrix(1:4,nrow = 2)
matrix2 = matrix(5:8,nrow = 2)

horizontal_merge = cbind(matrix1,matrix2)
print(horizontal_merge)

vertical_merge = rbind(matrix1,matrix2)
print(vertical_merge)


## matrix indexing
matrix1 = matrix(1:9,nrow = 3)
print(matrix1)
print(matrix1[1,]) #print the first row only
print(matrix1[,2]) # print the second row



