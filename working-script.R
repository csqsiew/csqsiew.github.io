sample_smallworld(1, 34, 2, 0) |> plot()

test <- sample_smallworld(1, 34, 2, 0) + edges(sample(1:vcount(karate), 10 * 2, replace = TRUE))
summary(test)

gws0 <- list()
gws1 <- list()
gws2 <- list()
gws3 <- list()
gws4 <- list()

for(i in 1:20) {
  gws0[[i]] <- sample_smallworld(1, 34, 2, 0) + edges(sample(1:vcount(karate), 10 * 2, replace = TRUE))
  gws1[[i]] <- sample_smallworld(1, 34, 2, 0.01) + edges(sample(1:vcount(karate), 10 * 2, replace = TRUE))
  gws2[[i]] <- sample_smallworld(1, 34, 2, 0.05) + edges(sample(1:vcount(karate), 10 * 2, replace = TRUE))
  gws3[[i]] <- sample_smallworld(1, 34, 2, 0.1) + edges(sample(1:vcount(karate), 10 * 2, replace = TRUE))
  gws4[[i]] <- sample_smallworld(1, 34, 2, 1) + edges(sample(1:vcount(karate), 10 * 2, replace = TRUE))
}

lc <- layout_in_circle(gws0[[1]])
par(mfrow=c(1,5), mar=c(0,0,1,0)) # space in top
plot(gws0[[1]], layout = lc, main='p=0', vertex.label = NA, vertex.frame.color = 'white')
plot(gws1[[1]], layout = lc, main='p=0.01', vertex.label = NA, vertex.frame.color = 'white')
plot(gws2[[1]], layout = lc, main='p=0.05', vertex.label = NA, vertex.frame.color = 'white')
plot(gws3[[1]], layout = lc, main='p=0.1', vertex.label = NA, vertex.frame.color = 'white')
plot(gws4[[1]], layout = lc, main='p=1', vertex.label = NA, vertex.frame.color = 'white')
# exporting as 700x200 is good

sapply(gws1, transitivity, type = 'global')
# ggplot2 viz for L and C across p

wsm <- data.frame(
  C = c(sapply(gws0, transitivity, type = 'global'),
        sapply(gws1, transitivity, type = 'global'),
        sapply(gws2, transitivity, type = 'global'),
        sapply(gws3, transitivity, type = 'global'),
        sapply(gws4, transitivity, type = 'global')
        ),
  L = c(sapply(gws0, mean_distance),
        sapply(gws1, mean_distance),
        sapply(gws2, mean_distance),
        sapply(gws3, mean_distance),
        sapply(gws4, mean_distance)),
  p = c(rep('0', 20), rep('0.01', 20), rep('0.05', 20), rep('0.1', 20), rep('1', 20))
)

ggplot(wsm, aes(x = p, y = C)) +
  stat_boxplot(geom = "errorbar", # Error bars
               width = 0.25) +    # Bars width
  geom_boxplot()

ggplot(wsm, aes(x = p, y = L)) +
  stat_boxplot(geom = "errorbar", # Error bars
               width = 0.25) +    # Bars width
  geom_boxplot()

library(ggplot2)

summary(karate)
mean_distance(karate)
transitivity(karate, type = "average")
degree(karate) |> mean()

summary(gws)
mean_distance(karate)
transitivity(karate, type = "average")
degree(karate) |> mean()

ger_plot <- data.frame(
  edges = c(sapply(ger100, gsize), sapply(ger200, gsize)),
  density = c(sapply(ger100, edge_density), sapply(ger200, edge_density)),
  label = c(rep('gnm', 100), rep('gnp', 100))
)

ggplot(ger_plot, aes(x = label, y = density)) +
  stat_boxplot(geom = "errorbar", # Error bars
               width = 0.25) +    # Bars width
  geom_boxplot()
