#first column with column name id
id <- c(1:10)

#second column with column name name
name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", 
          "Christy Hickman", "Johnson Harper", "Candace Miller",
          "Carlson Landy", "Pansy Jordan", "Darius Berry", "Claudia Garcia")

#third column with column name job title
job_title <- c("Professional", "Programmer", "Management", "Clerical",
               "Developer", "Programmer", "Management", "Clerical", 
               "Developer", "Programmer")

#creating a dataframe with the name "employee" 
employee <- data.frame(id, name, job_title)

print(employee)

#To separate the column name into 2 different column 
#first name and last name
separate(employee,name, into = c("first_name","last_name"), sep = " ")

employee02 <-

#to join the first name and lastname 
unite(employee,"name",first_name,last_name,sep = " ")