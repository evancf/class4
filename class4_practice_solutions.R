# EBIO 338/538 Class 04 R Essentials Practice Exercises

#1 Clear all objects
rm(list=ls())

#2 Import the file with Daphnia data and name it daphnia
daphnia <- read.csv(file="Class_04_pHDaphnia.csv")

#3 Examine the new data
# a) How many rows does it have? 
nrow(daphnia)
# b) How many columns does it have? 
ncol(daphnia)
# c) What are its dimensions
dim(daphnia)
# d) Is it a data frame?
is.data.frame(daphnia)
# e) How many types of Daphnia are there?
daphnia$Daphnia <- as.factor(daphnia$Daphnia) # Want these to be treated as factor
# Alternatively, could set stringsAsFactor = TRUE in read.csv() above...
length(levels(daphnia$Daphnia))
# f) What are the different Detergents?
daphnia$Detergent <- as.factor(daphnia$Detergent) 
levels(daphnia$Detergent)
# g) What is the range of pH values in the dataset?
range(daphnia$pH)
# h) What is the mean pH value?
mean(daphnia$pH)
# i) What is the maximum growth rate?
max(daphnia$Growth.rate)
# j) Extract the row with the maximum growth rate
daphnia[daphnia$Growth.rate==max(daphnia$Growth.rate),]
# k) Subset the observations in Tyne water
daphnia[daphnia$Water=="Tyne",]
# l) What are the dimensions of the subset from #k?
dim(daphnia[daphnia$Water=="Tyne",])
# m) Create a new factored vector called new_vec that contains Water and Detergent information separated by and underscore _
new_vec <- as.factor(paste(daphnia$Water, ", ", daphnia$Detergent, sep = ""))
# n) How many different unique combinations does new_vec contain?
levels(new_vec)
# o) Convert all uppercase letters in daphnia to lowercase
daphnia$Water <- tolower(daphnia$Water)
daphnia$Detergent <- tolower(daphnia$Detergent)
daphnia$Daphnia <- tolower(daphnia$Daphnia)
# p) Remove "brand" from all rows of Detergent
daphnia$Detergent <- substr(daphnia$Detergent, 6,6)




