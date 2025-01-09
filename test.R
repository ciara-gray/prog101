sqrt(9)
abs(-3)

#do I have to hit run on every line?
#I have had to move my cursor to get things to run...
#also I cant get my comment lines to wrap...

str(3)
str("Santa Barbara")

round(pi, 0)
round(pi, 2)

?round

barnacle_density <- c(2, 3, 1, 4)
site <- c("One", "Two", "Three", "Four")
region <- c("North", "South", "East", "West")
barnacle_density[1]
barnacle_density[1:2]
region[2:3]
site[c(1,3)]

sqrt(barnacle_density)
length(barnacle_density)
max(barnacle_density)
min(barnacle_density)
toupper(site)
unique(region)

site_area <- c(10, 20, 30, 40)
barnacle_count <- barnacle_density * site_area

paste(region, site)

barnacle_density[site=="One"]

site[region != "North"]
site[barnacle_density < 3]
site[mean(barnacle_density) < 3]

sum(barnacle_density > 2)
#sums total of true values

