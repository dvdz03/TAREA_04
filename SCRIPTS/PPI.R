#RED PPI
install.packages("igraphdata")
library(igraphdata)
data(package="igraphdata")
igraph::upgrade_graph(yeast)->levadura

vcount(levadura)
ecount(levadura)
degree(levadura, mode="all")
hist(degree(levadura),col="darkorchid",main="distribución de PPI levadura")
#tiene una distribución de cola larga
#ajute log-log:
hist(log(degree(levadura)), col="darkorchid",main="histograma logarítmico")

#10 proteínas más conectadas
max(degree(levadura))
which.max(degree(levadura))
head(sort(degree(levadura),decreasing=TRUE),10)
#diámetro y promedio de distancias
diameter(levadura)
get_diameter(levadura)
distances(levadura, v=V(levadura))
mean(distances(levadura))
is_connected(levadura)
mean(distances(levadura)[distances(levadura)!=Inf])

transitivity(levadura)
mean(transitivity(levadura))
