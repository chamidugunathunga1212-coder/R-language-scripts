BookID  = c(701,702,703,704)
Title  = c("Python Basics","Data Analytics","Web Design","AI Handbook")
Pages  = c(320,450,280,500)
Rating = c(4.5,4.8,4.0,4.9)

books = data.frame(BookID,Title,Pages,Rating)

# display the full dataframe
print(books)

# display the only title and rating
print(books["Title"]) # access the title column
print(books["Rating"]) # access the rating column


# display the ratings which are greater than 4.5

filtered_ratings = books[books$Rating>4.5,]
print(filtered_ratings)
