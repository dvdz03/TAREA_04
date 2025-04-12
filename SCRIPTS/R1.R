##############################
#Propiedades básicas de redes#
##############################

#ej1
g1<-make_empty_graph(n=10,directed=FALSE)
g1<-add_edges(g1,c(10,6, 9,6, 6,4, 8,4, 4,2, 2,3, 3,5, 2,1, 1,7))
plot(g1)

vcount(g1)
ecount(g1)
degree(g1)
mean(degree(g1))
hist(degree(g1),col="lightblue",main="distribución de degree en red1")
edge_density(g1)
as_adjacency_matrix(g1)
distances(g1)
diameter(g1)
get_diameter(g1)
transitivity(g1, type="undirected")

#ejercicio 2
g2<-make_empty_graph(n=10, directed=TRUE)
g2<-add_edges(g2,c(6,1, 3,1, 2,1, 5,1, 4,1, 8,4, 9,4, 7,4, 10,8))
plot(g2)
vcount(g2)
ecount(g2)
degree(g2)->g2_todo
degree(g2,mode="in")g2_entrada
degree(g2,mode="out")g2_salida
mean(degree(g2))
hist(g2_todo,col="lightblue",main="distribución de degree en red1")
hist(g2_entrada,col="lightpink",main="degree de la entrada")
hist(g2_salida,col="lightgreen",main="degree de salida")
edge_density(g2)
as_adjacency_matrix(g2)
distances(g2)
diameter(g2)
get_diameter(g2)
transitivity(g2)

#ejercicio 3
g3<-make_full_graph(n=10, directed=FALSE, loops=FALSE)
plot(g3)
vcount(g3)
ecount(g3)
degree(g3)
mean(degree(g3))
hist(degree(g3),col="darkgreen",main="degree de red 3")
edge_density(g3)
as_adjacency_matrix(g3)
distances(g3)
diameter(g3)
get_diameter(g3)
transitivity(g3)

#gráfica 4
g4<-make_empty_graph(n=10, directed=TRUE)
g4<-add_edges(g4,c(1,8, 1,3, 2,10, 2,6, 2,5, 2,4, 3,10, 4,2, 4,10, 4,9, 4,6, 4,3, 5,1, 5,10, 5,7, 6,9, 6,8, 6,3, 7,1, 7,8, 8,7, 8,10, 8,9, 9,10, 9,3, 9,2, 10,5, 10,1, 10,6, 10,9),vertex.size=15,edge.arrow.size=0.1)
plot(g4)
vcount(g4)
ecount(g4)
degree(g4)->g4_todo
g4_todo
degree(g4,mode="in")->g4_entrada
g4_entrada
degree(g4,mode="out")->g4_salida
g4_salida
mean(degree(g4))
hist(g4_todo,col="lightblue",main="distribución de degree en red1")
hist(g4_entrada,col="lightpink",main="degree de la entrada")
hist(g4_salida,col="lightgreen",main="degree de salida")
edge_density(g4)
as_adjacency_matrix(g4)
distances(g4)
diameter(g4)
get_diameter(g4)
transitivity(g4)

#gráfica 5
g5<-make_empty_graph(n=10, directed=FALSE)
plot(g5)
g5<-add_edges(g5,c(2,7, 5,7, 7,1, 7,3, 3,1, 7,8, 1,10, 8,10, 10,9, 8,9, 8,6, 10,4, 4,6))
plot(g5)
vcount(g5)
ecount(g5)
hist(degree(g5),col="orchid", main="degree red 5")
edge_density(g5)
as_adjacency_matrix(g5)
distances(g5)
diameter(g5)
get_diameter(g5)
transitivity(g5)

#gráfica 6
g6<-make_empty_graph(n=10, directed=TRUE)
g6<-add_edges(g6,c(1,3, 1,2, 3,7, 3,6, 2,4, 2,5, 5,10, 4,9, 4,8),vertex.size=15,edge.arrow.size=0.1)
plot(g6)
vcount(g6)
ecount(g6)
degree(g6)->g6_todo
g6_todo
degree(g6,mode="in")->g6_entrada
g6_entrada
degree(g6,mode="out")->g6_salida
g6_salida
mean(degree(g6))
hist(g6_todo,col="lightblue",main="distribución de degree en red6")
hist(g6_entrada,col="lightpink",main="degree de la entrada")
hist(g6_salida,col="lightgreen",main="degree de salida")
edge_density(g6)
as_adjacency_matrix(g6)
distances(g6)
diameter(g6)
get_diameter(g6)
transitivity(g6)
