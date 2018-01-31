### Exercise 1: Data Frame Practice

## This exercise need the "fueleconomy" package.  Install and load it.
## You should have have access to the `vehicles` data.frame
install.packages("fueleconomy")
library("fueleconomy")
View(vehicles)
# Create a data.frame of vehicles from 1997 only
install.packages("dplyr")
library("dplyr")
from1997 <- vehicles[vehicles$year == 1997,]
vehicles1997 <- filter(vehicles, year == 1997)
# Use the `unique` function to verify that there is only 1 value in the `year` column of your new data.frame
unique(from1997$year)
# Create a data.frame of 2-Wheel Drive vehicles that get more than 20 miles/gallon in the city
twowheeldrive <- vehicles[vehicles$drive == "2-Wheel Drive" & vehicles$cty > 20,]
    

# Of those vehicles, what is the vehicle ID of the vehicle with the worst hwy mpg?
get_id <- vehicles[vehicles$hwy == min(vehicles$hwy),]$id

# Write a function that takes a `year` and a `make` as parameters, and returns 
# The vehicle that gets the most hwy miles/gallon of vehicles of that make in that year
mosthwy <- function(year, make) {
  theone <- vehicles[vehicles$year == year & vehicles$make == make,]
  return(theone[theone$hwy == max(theone$hwy),])
  
}

# What was the most efficient honda model of 1995?
mosthwy(1995, "Honda")

