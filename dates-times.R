## Working with dates and times

# get today's date
today <- Sys.Date()
today

class(today) # Date object

# get today's date and time
now <- Sys.time()
now # note computer's time zone
class(now) # POSIXct is the main class of interest

my_date <- as.Date("1971-05-14")
my_date # uses default format '%Y-%m-%d" (%Y = 4-digit-year)
class(my_date)

my_date2 <- as.Date("09/11/2001")
my_date2 # tries to decode but gets it wrong (same thing if use '-' instead of '/')
class(my_date2)

my_date3 <- as.Date("1971-14-05") # error: can't decode ambiguous format

## CONVERTING FROM NON-STANDARD FORMATS - deal with issues by being explicit about format
my_date2 <- as.Date("09/11/2001", format="%m/%d/%Y") # describe the existing format 
my_date2 # R automatically converts to standard %Y-%m-%d format
class(my_date2)

## DATES WITH TIMES: use as.POSIXct instead of as.Date
# no examples

## DATE ARITHMETIC
# use my_date from above

my_date2 <- my_date + 3
my_date2
days <- my_date2 - my_date
days # provides time difference in days

## use 'unclass' to revert to numbers
days2 <- unclass(my_date2) - unclass(my_date)
days2

# works the same with POSIXct except values are seconds
# R will convert to understandable time unit when seconds are large

### Date symbols
# %Y - 4 digit yr
# %y - 2 digit yr
# %m - 2 digit mth
# %d - 2 digit day
# %A - weekday
# %a - 3 letter abbrev weekday
# %B - month 
# %b - 3 letter abbrev mth

# Definition of character strings representing dates
str1 <- "May 23, '96"
str2 <- "2012-03-15"
str3 <- "30/January/2006"

# Convert the strings to dates: date1, date2, date3
date1 <- as.Date(str1, format = "%b %d, '%y")
date2 <- as.Date(str2)
date3 <- as.Date(str3, format="%d/%B/%Y")

# Convert dates to formatted strings
format(date1, "%A")
format(date2, "%d")
format(date3, "%b-%y")
