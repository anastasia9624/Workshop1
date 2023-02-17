# BIO319 Workshop 1 Script
# Elisabeth Busch-Nentwich
# 23/01/2023

# 1. Jumping Back into R…
1 + 3 * 10

# 2. Creating variables in R 
x <- 10
y <- 20
z <- 'thirty'

# 3. Data classes
# classes can be numeric, character, logical
y-x
x*y
is.numeric(x)
class(y)
class(z)

# Logical data
a <- TRUE
b <- FALSE
1 < 2
1 > 2
1 < 0.1
x > y
y > x

# <= is less than or equal to
# >= is greater than or equal to
# == is equal to
# != is not equal to
# & is and
# | is or

1 < 2 & 1 > 0 # ask whether 1 is less than 2 AND greater than 0
1 < 2 | 1 > 0 # ask whether whether either expression is true

# 4. Question Time
# 4.1. Questions without R
7 >= 6 #Q1
x <- 12 / 3 > 3 & 5 ^ 2 < 25 #Q2
y <- 12 / 3 > 3 | 5 ^ 2 < 25 | 1 == 2 #Q3
z <- FALSE
z == TRUE #Q4

# 4.2. Challenge time

# Q5) Make an object with the value 'The cake' and another with the value 'A lie'. 
# Create a logical expression to test whether these two values are the same.
cake <- 'The cake'
lie <- 'A lie'
cake == lie

# Q6) Make a logical expression that tests whether your first name is greater than or equal to 6 letters long.
nchar('Anastasia') >= 6

# Q7) Make a logical expression that tests whether your name is less than 6 letters long 
# and is not James, Janelle, Jamil or Jessica.
name <- 'Anastasia'
nchar(name) >= 6 & name != 'James' & name != 'Jamil' & name != 'Jessica'

# 5. Scalars, Vectors and Matrices
# Object types: 
# Scalars contain a single value (e.g. x <- 1 or cheese <- 'delicious')
# Vectors contain multiple values in a single object

# 5.1. Creating vectors with c()
x <- c(1, 2, 3, 4)
y <- c(FALSE, TRUE, FALSE, TRUE, FALSE)
z <- c('I', 'got', 'the', 'right', 'temperature', 'to', 
       'shelter', 'you', 'from', 'the', 'storm')
class(x)
class(y)
class(z)

# The rep() function repeats a vector or scalar multiple times 
# to create a vector.
rep(x = c(1, 2, 3), times = 5)
rep(x = c('I', 'will', 'tell', 'lies'), times = 25)
?rep()
rep(x = c('a', 'b', 'c'), each = 5)

# 5.2. Creating vectors with seq()
# seq() function creates numeric sequences between two values, 
# separated by as many divisions as you specify.
seq(from = 1, to = 10)
seq(from = 5, to = 50)
seq(from = 10, to = -2)
seq(from = 1, to = 101, by = 10)
seq(from = 10, to = 15, by = 0.1)
seq(from = 0, to = 15, by = 0.1)

# 5.3. ‘:’ and subscripting
# the : symbol creates integers sequence between the specified values
1:3
3:9
12:-2
# [] after our object can specify which elements we want 
# using integer positions:
x <- c('a', 'b', 'd', 'e', 'f', 'g', 'h')
x[6]
x[2:7]
x[1:4]
x[seq(from = 1, to = 7, by = 3)]
# subscript vectors (or matrices ordataframes) using logical statements:
x <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 8, 7, 6, 5, 4, 3, 2, 1)
x > 5
y <- x[x > 5]
print(y)

# Excercise
# Create a vector containing the numbers 2 through 15. 
x <- seq(from = 2, to = 15)
x
# Subscript this vector to make a new vector only containing 
# numbers less than or equal to 7.
y <- x[x <= 7]
print(y)
y

# Exercise 
# Using the %% operator, subscript vector to only contain 
# values that are a multiple of 3
# %% is Modulus, remainder from division
x
y <- x[x%%3 == 0]
y

# 5.4 Matrices
# create matrices using matrix() function:
mat1.data <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)
mat1 <- matrix(mat1.data,
               nrow = 3,
               ncol = 3,
               byrow = FALSE)
mat1

# Create a matrix of the first 12 letters of the alphabet that has 3 rows 
# and 4 columns. The first column should contain 'a','b','c'.
alph.data <- c('a','b','c','d','e','f','g','h','i','j','k','l')
alph <- matrix(alph.data,
               nrow = 3,
               ncol = 4,
               byrow = FALSE)
alph

# Use subscripting to return the 3rd element of the 4th column 
alp

# 6. The Dataframe
# 6.1. The basics

# 6.2. The $ - NOT FINISHED
df <- read.csv('NYTBestsellers.scv')
head(df)
df$number_of_pages <- rep(c(100,200,300,400,500), each = 20)
df$number_of_pages <- rep(seq(100,500, by = 100), each = 20)
df$number_of_pages

