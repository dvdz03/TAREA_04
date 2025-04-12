#KARATE

install.packages("igraph")
library(igraph)
karate<-make_graph("Zachary")
karate
plot(karate)
V(karate)
degree(karate)
sum(degree(karate))
ecount(karate)
#Tiene 34 nodos y 156 o 78 conexiones, depende

#que tan densa es la red
edge_density(karate)
densidad<-(2*E(karate))/(V(karate))*(V(karate)-1)
ecount(karate)
#cómo obtienes la matriz de adyecencia
adymat<-as.matrix(get.adjacency(karate))
adymat
#es una red no dirigida y no pesada

#DISTRIBUCIÓN DE CONECTIVIDAD
hist(degree(karate), col="darkorchid", main="distribución de frecuencias en karate")

#matriz de distancias
distmat<-distances(karate)
distmat
#distancia promedio
mean(distmat)
#diámetro
diam<-diameter(karate)
diam
#trayectoria del os nodos más alejados
alejados<-get_diameter(karate)
alejados
#coeficientes de clusterización
transitivity(karate)
transitivity(karate, type="local")#si sirve


