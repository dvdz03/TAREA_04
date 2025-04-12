#REDES BIOLÓGICAS
library(igraph)
redbio<-read_graph("~/TAREA_04/BASES_DATOS/bn-mouse_visual-cortex_1.edges",format="edgelist")
vcount(redbio)
ecount(redbio)
plot(redbio)
help(layout)
#todos los layouts posibles
plot(redbio,layout=layout.auto,vertex.size=15,edge.arrow.size=0.1)
plot(redbio,layout=layout.circle,vertex.size=15,edge.arrow.size=0.1)
plot(redbio,layout=layout.davidson.harel,vertex.size=15,edge.arrow.size=0.1)
plot(redbio,layout=layout.drl,vertex.size=15,edge.arrow.size=0.1)
plot(redbio,layout=layout.fruchterman.reingold,vertex.size=15,edge.arrow.size=0.1)
plot(redbio,layout=layout.fruchterman.reingold.grid,vertex.size=15,edge.arrow.size=0.1)
plot(redbio,layout=layout.gem,vertex.size=15,edge.arrow.size=0.1)
plot(redbio,layout=layout.graphopt,vertex.size=15,edge.arrow.size=0.1)
plot(redbio,layout=layout.grid,vertex.size=15,edge.arrow.size=0.1)
plot(redbio,layout=layout_on_grid,vertex.size=15,edge.arrow.size=0.1)
plot(redbio,layout=layout.kamada.kawai,vertex.size=15,edge.arrow.size=0.1)
plot(redbio,layout=layout.lgl,vertex.size=15,edge.arrow.size=0.1)
plot(redbio,layout=layout.mds,vertex.size=15,edge.arrow.size=0.1)
plot(redbio,layout=layout.random,vertex.size=15,edge.arrow.size=0.1)
plot(redbio,layout=layout_as_tree,vertex.size=15,edge.arrow.size=0.1)
plot(redbio,layout=layout.sphere,vertex.size=15,edge.arrow.size=0.1)
plot(redbio,layout=layout.spring,vertex.size=15,edge.arrow.size=0.1)
plot(redbio,layout=layout.star,vertex.size=15,edge.arrow.size=0.1)
plot(redbio,layout=layout.sugiyama,vertex.size=15,edge.arrow.size=0.1)
plot(redbio,layout=layout.svd,vertex.size=15,edge.arrow.size=0.1)
plot(redbio,layout=layout_components,vertex.size=15,edge.arrow.size=0.1)
plot(redbio,layout=layout_in_circle,vertex.size=15,edge.arrow.size=0.1)
plot(redbio,layout=layout.grid,vertex.size=15,edge.arrow.size=0.1)

#densidad de la red
edge_density(redbio)

#clusterización 
transitivity(redbio, type=("local"))->rebio1
transitivity(redbio, type="barrat")->rebio2
transitivity(redbio, type="weighted")->rebio3

#gráficas
plot(rebio1)
plot(rebio2)
plot(rebio3)
