

emails <- c("john.doe@ivyleague.edu", "education@world.gov", "dalai.lama@peace.org",
            "invalid.edu","quant@bigdatacollege.edu","cookie.monster@sesame.tv")

grepl("edu",emails)
hits<- grep("edu",emails)
emails[hits]

## more robust matching
grepl("@.*\\.edu$",emails)
hits2<- grep("@.*\\.edu$",emails)
emails[hits2]

## substitute with 'sub'
## sub() replaces the first match
## gsub() replaces all matches
sub("@.*\\.edu$","@datacamp.edu",emails)

## more complicated regex

awards <- c("Won 1 Oscar.",
            "Won 1 Oscar. Another 9 wins & 24 nominations.",
            "1 win and 2 nominations.",
            "2 wins & 3 nominations.",
            "Nominated for 2 Golden Globes. 1 more win & 2 nominations.",
            "4 wins & 1 nomination.")
## goes through each item in awards and substitutes the matched pattern
## "\\1" substitutes with whatever is in [0-9]+ (any number at least once)
## first item in list doesn't match, so it gets returned as is
sub(".*\\s([0-9]+)\\snomination.*$", "\\1", awards)