### sapply is 'simplified apply'
## returns a vector instead of list
## used when the class of objects returns is the same for all (otherwise need list)

###
cities <- c("New York","Paris","London","Tokyo",
            "Rio","Cape Town","Frankfurt")
unlist(lapply(cities,nchar)) ## used to create vector in lapply.R file
sapply(cities,nchar) ## creates vector with city and number of characters together
sapply(cities,nchar,USE.NAMES=FALSE) # leaves out city names

### can also create matrix
first_and_last <- function(name){
  name <- gsub(" ","",name)
  letters<- strsplit(name,split="")[[1]]
  c(first=min(letters),last=max(letters))
}
sapply(cities,first_and_last)

### in cases where a vector can't be created
### sapply will not actually simplify 
### will return list instead - same as lapply
unique_letters <- function(name){
  name<- gsub(" ","",name)
  letters<- strsplit(name,split="")[[1]]
  unique(letters)
}

sapply(cities,unique_letters)

list(runif(10),runif(10))
sapply(list(runif(10),runif(10)),
       function(x) {
         c(min=min(x),mean=mean(x),max=max(x))
        })