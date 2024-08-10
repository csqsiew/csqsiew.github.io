# PL4246 Tutorial 1
# Author: CSQSiew 
# Last updated: 17th Jan 2024

# Set up ----

# load required libraries (remember to install first)
library(igraph)

# IMPORT ----

## Your data is an edgelist ====

### Undirected, unweighted edges ----

karate_el <- read.csv('karate_el.csv', header = FALSE)

karate_network <- graph_from_data_frame(karate_el, directed = FALSE)
summary(karate_network)
### Directed, unweighted edges ----

karate_el <- read.csv('karate_el.csv', header = FALSE)

graph_from_data_frame(karate_el, directed = TRUE)

### Undirected, weighted edges ----

karate_el <- read.csv('karate_el_weights.csv', header = TRUE)

graph_from_data_frame(karate_el, directed = FALSE)

### Directed, weighted edges ----

karate_el <- read.csv('karate_el_weights.csv', header = TRUE)

graph_from_data_frame(karate_el, directed = TRUE)

## Your data is an adjacency matrix ====

### Undirected, unweighted edges ----

karate_am <- read.csv('karate_adj.csv', header = TRUE, row.names = 1)

karate_am <- as.matrix(karate_am)

graph_from_adjacency_matrix(karate_am, mode = 'undirected')

### Directed, unweighted edges ----

karate_am <- read.csv('karate_adj.csv', header = TRUE, row.names = 1)

karate_am <- as.matrix(karate_am)

graph_from_adjacency_matrix(karate_am, mode = 'directed')

### Undirected, weighted edges ----

karate_am <- read.csv('karate_adj_weights.csv', header = TRUE, row.names = 1)

karate_am <- as.matrix(karate_am)

graph_from_adjacency_matrix(karate_am, mode = 'undirected', weighted = 'weight')

### Directed, weighted edges ----

karate_am <- read.csv('karate_adj_weights.csv', header = TRUE, row.names = 1)

karate_am <- as.matrix(karate_am)

graph_from_adjacency_matrix(karate_am, mode = 'directed', weighted = 'weight')

# EXPORT ----

g <- graph_from_literal(Alex-Beth, Chris-Doug, Eliza-Alex, 
                        Beth-Doug, Alex-Chris, Doug-Alex)

plot(g)

save(g, file = 'fivefriends.RData') # save network as a R object (.RData)

rm(g) # remove the network object from the workspace

load('fivefriends.RData') # load the .RData file 
