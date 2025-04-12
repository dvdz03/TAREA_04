#red de amigos#
#cargar la matriz de adyacencias
amigos<-read.csv("~/TAREA_04/adjacency_matrix.csv")
amigos
rownames(amigos)<-amigos[-1]
amigos<-amigos[,-1]
amigos<-as.matrix(amigos)
amigos

#construcción de la red 
amired<-graph_from_adjacency_matrix(amigos)
amired
plot(amired,directed=0,vertex.size=15,edge.arrow.size=0.1, vertex.size=5, layout=layout_nicely)

#función que calcule #Amigos del aguien x
#y que lo compare con el #amigos de sus amigos
com_ami<-function(graph,x,y){
  numami<-length(neighbors(amired,x,mode="in"))
  numami1<-length(neighbors(amired,y, mode="in"))
  list(
    entradax=numami,
    entraday=numami1
  )
}
com_ami(amired,"ABRAHAM","MIGUEL")




