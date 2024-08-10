library(igraph)

data <- read.csv('cats.csv', header = F) # you should study the original .csv file to understand why header = F and why the graph_from_data_frame function was used below

network <- graph_from_data_frame(data, directed = FALSE) # I decided that for this network, I only care about whether the cats were "interacting" with each other or not, hence I assumed that direction of edges was not crucial to represent in the network (you may have other opinions!)

plot(network) # you may have noticed a "doubled" connection between two cats, think about why this might be the case by looking at the original .csv file

save(network, file = 'cats-network.RData')

rm(network)

load('cats-network.RData')
