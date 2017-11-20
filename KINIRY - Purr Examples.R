
library(tidyverse)


# How many starships was Luke in?

luke <- people[[1]]

names(luke)

length(luke$starships)


# Turn into a recipe

~ length(____$starships)

map(people, ~ length(.x$starships))


# Solve the problem for one element, then solve it for every element

# Find the name of each characters home world

luke$homeworld

View(planets)

planet_lookup[[luke$homeworld]]


planet_lookup[map_chr(people, "homeworld")]

map(people,
    ~planet_lookup[.x$homeworld])


map_chr(people,
    ~planet_lookup[.x$homeworld])












