### lapply -> easy way to apply a given function across all items in a list
## always returns a list

nyc <- list(pop=8405837,
            boroughs=c("Manhattan","Bronx","Brooklyn",
                       "Queens","Staten Island"),
            capital=FALSE)

## to find out the variable classes you can use for loop
for(info in nyc){
  print(class(info))
}

## easier with lapply
lapply(nyc,class)

## to find length of each item in a list you can use loop
cities <- c("New York","Paris","London","Tokyo",
            "Rio","Cape Town","Frankfurt")

num_chars <- c()
for(i in 1:length(cities)){
  num_chars[i]<- nchar(cities[i])
}
num_chars

lapply(cities,nchar) # as mentioned, returns list
## use 'unlist' if you don't want a list - easy!
unlist(lapply(cities,nchar))

### Oil prices
oil_prices <- list(2.37,2.49,2.18,2.22,2.47,2.32)
## make up your own custom function
triple <- function(x){
  3*x
}
result<- lapply(oil_prices,triple)
## get results in list
result
str(result)
## unlist result
unlist(result)

## create a more generic function
multiply<- function(x,factor){
  x*factor
}
## specify factor value as 3rd argument in lapply
times3 <- lapply(oil_prices,multiply,factor=3)
unlist(times3)
times4 <- lapply(oil_prices,multiply,factor=4)
unlist(times4)

### Exercises
pioneers <- c("GAUSS:1777", "BAYES:1702", "PASCAL:1623", "PEARSON:1857")

## Split names from birth year
split_math <- strsplit(pioneers, split = ":")
## apply tolower() in order to convert all to lower case
split_low <- lapply(split_math,tolower)
str(split_low)

## use with your own function
## function to select first item from each position in the list
select_first <- function(x){
  x[1]
}
lapply(split_low,select_first)

select_second <- function(x){
  x[2]
}
lapply(split_low,select_second)
