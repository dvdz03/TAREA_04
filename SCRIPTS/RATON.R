#REDES BIOLÓGICAS
library(igraph)
redbio<-read_graph("~/TAREA_04/BASES_DATOS/bn-mouse_visual-cortex_1.edges",format="edgelist")
vcount(redbio)
ecount(redbio)
plot(redbio)
help(layout)
plot(redbio,layout=layout.auto)
